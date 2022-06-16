import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/profile_upadte_bloc/profile_upload_bloc.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'package:save_bill/presentation/widgets/circular_image_widget.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wt = MediaQuery.of(context).size.width / 100;

    Widget dummyImage = CircularImageWidget(
      radius: wt * 50,
      imageProvider: const AssetImage(Assets.assetsImagesDummyProfile),
    );

    return BlocBuilder<ProfileUploadBloc, ProfileUploadState>(
      buildWhen: (state1, state2) {
        return state1.imageData != state2.imageData ||
            state1.imageUrl != state2.imageUrl;
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context
                .read<ProfileUploadBloc>()
                .add(const ProfileUploadEvent.picProfile());
          },
          child: Hero(
            tag: 'ProfileImage',
            child: state.imageData != null
                ? CircularImageWidget(
                    radius: wt * 50,
                    imageProvider: FileImage(File(state.imageData!.path)),
                  )
                : state.imageUrl != null
                    ? CachedNetworkImage(
                        imageUrl: state.imageUrl!,
                        imageBuilder: (context, imageProvider) =>
                            CircularImageWidget(
                                radius: wt * 50, imageProvider: imageProvider),
                        placeholder: (context, url) => Stack(
                          children: [
                            dummyImage,
                            const Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: CircularProgressIndicator(
                              
                                ),
                              ),
                            ),
                          ],
                        ),
                        errorWidget: (context, url, error) => dummyImage,
                      )
                    : dummyImage,
          ),
        );
      },
    );
  }
}
