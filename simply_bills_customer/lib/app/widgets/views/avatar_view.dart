import 'package:flutter/material.dart';
import 'package:flutter_gravatar/flutter_gravatar.dart';

import 'package:get/get.dart';

import '../../../controllers/serverpod_controller.dart';

class AvatarView extends GetView<ServerPodController> {
  const AvatarView({super.key, required this.radius, required this.showTitle});

  final double radius;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: (controller.isSignedIn.value),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Builder(builder: (context) {
                final email = controller.userInfo?.email ?? '';
                final gravatar = Gravatar(email);
                return CircleAvatar(
                  radius: radius,
                  child: ClipOval(
                    child: Image.network(
                      gravatar.imageUrl(
                          size: (radius * 2).toInt(), defaultImage: 'mp'),
                    ),
                  ),
                );
              }),
            ),
            Visibility(
              visible: (showTitle),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  controller.userInfo?.userName ?? '',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
