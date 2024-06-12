// Project imports:
import '../../logic/types/sign_in_with.dart';
import '../../logic/types/user.dart';

/// Firebase Auth
abstract interface class Auth {
  /// ユーザーの変化を監視
  Stream<User?> watchUser();

  /// サインインしているかどうか
  Future<bool> isSignedIn();

  /// サインインを実行
  Future<void> signIn(SignInWith signInWith);

  /// サインアウトを実行
  Future<void> signOut();
}
