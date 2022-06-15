import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/profile_upadte_bloc/profile_upload_bloc.dart';
import 'package:save_bill/core/meta_assets.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wt = MediaQuery.of(context).size.width / 100;

    return BlocBuilder<ProfileUploadBloc, ProfileUploadState>(
      buildWhen: (state1, state2) {
        return state1.isLoading != state2.isLoading;
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context
                .read<ProfileUploadBloc>()
                .add(const ProfileUploadEvent.picProfile());
          },
          child: Container(
            height: wt * 50,
            width: wt * 50,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: state.imageData == null
                    ? const AssetImage(Assets.assetsImagesDummyProfile)
                        as ImageProvider
                    : FileImage(File(state.imageData!.path)),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(120.0)),
            ),
          ),
        );
      },
    );
  }
}
