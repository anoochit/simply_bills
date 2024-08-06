import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_manager/app/modules/home/views/address_body_view.dart';
import 'package:simply_bills_manager/app/modules/home/views/bills_body_view.dart';
import 'package:simply_bills_manager/app/modules/home/views/user_body_view.dart';

import '../../../data/data/bottom_nav_items.dart';
import '../../../data/data/nav_items.dart';
import '../controllers/home_controller.dart';
import 'reports_body_view.dart';
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
            ReportsBodyView(),
            BillsBodyView(),
            UserBodyView(),
            AddressBodyView(),
            NotificationBodyView(),
            SupportBodyView(),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // header
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              child: Container(),
            ),
            // menu
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: navItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(navItems[index].icon),
                    title: Text(navItems[index].title),
                    onTap: () {
                      controller.navIndex.value = index;
                      Get.back();
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
