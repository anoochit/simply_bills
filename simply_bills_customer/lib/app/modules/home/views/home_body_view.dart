import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/data/service_items.dart';
import '../../../widgets/views/address_buttons_view.dart';
import '../../../widgets/views/grid_buttons_view.dart';
import '../../../widgets/views/label_devider_view.dart';

class HomeBodyView extends GetView {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // address
          const AddressButtonsView(items: []),

          // service label
          const LabelDeviderView(title: 'Our services'),

          // service buttons
          GridButtonsView(items: serviceItems),
        ],
      ),
    );
  }
}
