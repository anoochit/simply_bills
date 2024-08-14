import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/data/bottom_nav.dart';
import '../../../widgets/views/avatar_view.dart';
import '../controllers/home_controller.dart';
import 'address_body_view.dart';
import 'bills_body_view.dart';
import 'home_body_view.dart';
import 'notificaion_body_view.dart';
import 'profile_body_view.dart';
import 'report_body_view.dart';
import 'support_body_view.dart';
import 'users_body_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(navItems[controller.navIndex.value].title)),
        surfaceTintColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.navIndex.value,
          children: const [
            // home
            HomeBodyView(),

            // report
            ReportBodyView(),

            // bills
            BillsBodyView(),

            // user
            UsersBodyView(),

            // address
            AddressBodyView(),

            // notification
            NotificaionBodyView(),

            // support
            SupportBodyView(),

            // profile
            ProfileBodyView(),
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
              child: const SizedBox(
                width: double.infinity,
                child: AvatarView(radius: 42, showTitle: true),
              ),
            ),

            // menu
            Expanded(
              child: ListView.builder(
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
            ),
          ],
        ),
      ),
    );
  }
}
