import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'export.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(navItems[controller.navIndex.value].title)),
        centerTitle: true,
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.navIndex.value,
          children: const [
            HomeBodyView(),
            BillsBodyView(),
            NotificationBodyView(),
            AskBodyView(),
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
