import 'package:serverpod/serverpod.dart';

class CustomScope extends Scope {
  const CustomScope(String super.name);

  static const officer = CustomScope('officer');
  static const customer = CustomScope('customer');
}
