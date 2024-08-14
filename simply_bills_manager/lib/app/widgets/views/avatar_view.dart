import 'package:flutter/material.dart';
import 'package:flutter_gravatar/flutter_gravatar.dart';

import 'package:get/get.dart';

import '../../../serverpod.dart';

class AvatarView extends GetView {
  const AvatarView({super.key, required this.radius, required this.showTitle});

  final double radius;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: (sessionManager.isSignedIn),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Builder(builder: (context) {
              final email = sessionManager.signedInUser?.email ?? '';
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
              padding: const EdgeInsets.all(4.0),
              child: Text(
                sessionManager.signedInUser?.userName ?? '',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
