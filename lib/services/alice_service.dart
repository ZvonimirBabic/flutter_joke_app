import 'package:alice/alice.dart';
import 'package:get/get.dart';

class AliceService extends GetxService {
  ///
  /// VARIABLES
  ///

  late final alice = Alice();

  ///
  /// METHODS
  ///

  /// Opens a screen with `Alice`
  void openAlice() => alice.showInspector();
}
