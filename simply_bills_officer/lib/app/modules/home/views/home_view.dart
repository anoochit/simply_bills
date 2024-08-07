import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/data/bottom_nav.dart';
import '../controllers/home_controller.dart';
import 'bills_body_view.dart';
import 'home_body_view.dart';
import 'notificaion_body_view.dart';
import 'support_body_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        surfaceTintColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.navIndex.value,
          children: [
            // home
            HomeBodyView(),

            // bills
            BillsBodyView(),

            // notification
            NotificaionBodyView(),

            // support
            SupportBodyView(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(() => NavigationBar(
          selectedIndex: controller.navIndex.value,
          onDestinationSelected: (value) => controller.navIndex.value = value,
          destinations: List.generate(navItems.length, (index) {
            return NavigationDestination(
              icon: Icon(navItems[index].icon),
              selectedIcon: Icon(navItems[index].selectedIcon),
              label: navItems[index].title,
            );
          }))),
    );
  }
}
