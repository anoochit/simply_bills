import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_officer/app/modules/home/views/home_body_view.dart';
import 'package:simply_bills_officer/app/modules/home/views/notification_body_view.dart';
import 'package:simply_bills_officer/app/modules/home/views/support_body_view.dart';

import '../../../data/data/bottom_nav_items.dart';
import '../../../data/data/nav_items.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(navItems[controller.navIndex.value].title)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        surfaceTintColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.navIndex.value,
          children: const [
            HomeBodyView(),
            NotificationBodyView(),
            SupportBodyView(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          onDestinationSelected: (value) => controller.navIndex.value = value,
          selectedIndex: controller.navIndex.value,
          destinations: destinations,
        ),
      ),
    );
  }
}
