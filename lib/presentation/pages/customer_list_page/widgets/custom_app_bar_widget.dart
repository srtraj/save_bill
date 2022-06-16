import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'package:save_bill/domain/di/get_it.dart';
import 'package:save_bill/domain/i_repo/i_local_db_repo.dart';
import 'package:save_bill/presentation/widgets/circular_image_widget.dart';
import 'package:save_bill/routes/route_arguments.dart';
import 'package:save_bill/routes/routes.dart';

import 'view_report_card.dart';

class UserAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const UserAppBarWidget({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 100);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              Routes.profileUpdatePage,
            );
          },
          child: Hero(
            tag: "ProfileImage",
            child: CachedNetworkImage(
              imageUrl: getItInstance<ILocalDbRepo>().getUserData()!.profUrl,
              imageBuilder: (context, imageProvider) =>
                  CircularImageWidget(imageProvider: imageProvider),
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const CircularImageWidget(
                imageProvider: AssetImage(Assets.assetsImagesDummyProfile),
              ),
            ),
          ),
        ),
      ),
      title: Text(getItInstance<ILocalDbRepo>().getUserData()!.name),
      actions: [
        IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              getItInstance<ILocalDbRepo>()
                  .setInitialPageInfo(pageInfo: Routes.initial);
              FirebaseAuth.instance.signOut().then((value) =>
                  Navigator.pushNamedAndRemoveUntil(
                      context, Routes.initial, (route) => false));
            }),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          color: Colors.white,
          height: 100,
          child: Stack(
            children: [
              ColoredBox(
                color: Theme.of(context).primaryColor,
                child: const SizedBox(
                  height: 50,
                  width: double.infinity,
                ),
              ),
              const ViewReportCard(),
            ],
          ),
        ),
      ),
    );
  }
}
