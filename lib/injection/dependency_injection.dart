
import 'package:flutter_basic/data/contact_data_mock.dart';

import '../data/contact_data.dart';
import '../data/contact_data_impl.dart';

enum Flavor {
  MOCK,
  PRO
}

/// Simple DI
class Injector {
  static final Injector _singleton = Injector._internal();
  static Flavor _flavor;

  static void configure(Flavor flavor) {
    _flavor = flavor;
  }

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  ContactRepository get contactRepository {
    switch(_flavor) {
      case Flavor.MOCK: return MockContactRepository();
      default: // Flavor.PRO:
       return RandomUserRepository();
    }
  }
}