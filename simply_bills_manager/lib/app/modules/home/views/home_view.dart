import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/data/bottom_nav.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/views/avatar_view.dart';
import '../controllers/home_controller.dart';
import 'address_body_view.dart';
import 'home_body_view.dart';
import 'invoice_body_view.dart';
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

            // invoice
            InvoiceBodyView(),

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
                child: AvatarView(radius: 44, showTitle: true),
              ),
            ),

            // menu
            Expanded(
              child: ListView(
                children: List.generate(navItems.length, (index) {
                  return ListTile(
                    leading: Icon(navItems[index].icon),
                    title: Text(navItems[index].title),
                    onTap: () {
                      controller.navIndex.value = index;
                      Get.back();
                    },
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Obx(() => buildFAB(context)),
    );
  }

  Widget buildFAB(BuildContext context) {
    final menu = navItems[controller.navIndex.value].key;
    switch (menu) {
      case 'invoices':
        return FloatingActionButton(
          onPressed: () {
            // create invoice
            Get.toNamed(Routes.CREATE_INVOICE);
          },
          child: const Icon(Icons.add),
        );

      case 'notification':
        return FloatingActionButton(
          onPressed: () async {
            // add notification
          },
          child: const Icon(Icons.add),
        );

      case 'users':
        return FloatingActionButton(
          onPressed: () async {
            // add user
          },
          child: const Icon(Icons.add),
        );

      default:
        return Container();
    }
  }
}
