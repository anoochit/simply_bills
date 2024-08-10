import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/views/address_button_view.dart';
import '../../../widgets/views/label_devider_view.dart';
import '../../../widgets/views/service_button_view.dart';

class HomeBodyView extends GetView {
  const HomeBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          // address
          AddressButtonView(items: ['item 1', 'item 2']),

          // label devider
          LabelDeviderView(title: 'Our services'),

          // service buttons
          ServiceButtonView(),
        ],
      ),
    );
  }
}
