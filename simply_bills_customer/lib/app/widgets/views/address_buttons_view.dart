import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_bills_customer/app/widgets/views/address_add_button_view.dart';

class AddressButtonsView extends GetView {
  const AddressButtonsView({super.key, required List items});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9.0),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).width * 2 / 3.6,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: const [
          AddressAddButtonView(),
        ],
      ),
    );
  }
}
