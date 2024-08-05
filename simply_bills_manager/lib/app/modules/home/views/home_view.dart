import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/data/bottom_nav_items.dart';
import '../../../data/data/nav_items.dart';
import '../controllers/home_controller.dart';
import 'bills_body_view.dart';
import 'home_body_view.dart';
import 'notification_body_view.dart';
import 'support_body_view.dart';

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
            BillsBodyView(),
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
