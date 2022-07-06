import 'package:app_2/features/sync/sync.dart';

class Auth_controller {
  static const String KEY = "token_authenticated";
  Auth_controller();

  Future<bool> authenticated() async {
    print("authenticated");
    String token = await Sync.get(Auth_controller.KEY);
    return token != "";
  }

  authenticate(String value) async {
    await Sync.set(Auth_controller.KEY, value);
  }

}