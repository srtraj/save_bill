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
      builder: (context, state) {
        return Stack(
          children: [
            GestureDetector(
                onTap: () {
                  context
                      .read<ProfileUploadBloc>()
                      .add(const ProfileUploadEvent.picProfile());
                },
                child: Container(
                  height: wt * 40,
                  width: wt * 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: state.data == null
                          ? const AssetImage(Assets.assetsImagesDummyProfile)
                              as ImageProvider
                          : FileImage(File(state.data!.path)),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(120.0)),
                  ),
                )),
          ],
        );
      },
    );
  }
}
