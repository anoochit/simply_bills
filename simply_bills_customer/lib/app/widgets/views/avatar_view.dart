import 'package:flutter/material.dart';
import 'package:flutter_gravatar/flutter_gravatar.dart';

import 'package:get/get.dart';
import 'package:simply_bills_customer/services/serverpod_service.dart';

class AvatarView extends GetView {
  const AvatarView({super.key});
  @override
  Widget build(BuildContext context) {
    final authService = Get.find<ServerPodService>();
    final gravatar = Gravatar(authService.userInfo!.email!);
    return CircleAvatar(
      backgroundImage: NetworkImage(
        gravatar.imageUrl(size: 120, defaultImage: 'mp'),
      ),
    );
  }
}
