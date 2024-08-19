import 'package:get/get.dart';
import 'package:serverpod_auth_client/module.dart';
import 'package:simply_bills_client/simply_bills_client.dart';

class AppController extends GetxController {
  RxList<UserInfo> listUser = <UserInfo>[].obs;
  RxList<Faq> listFaq = <Faq>[].obs;
  RxList<Invoice> listInvoice = <Invoice>[].obs;
  RxList<Address> listAddress = <Address>[].obs;
}
