// Dart imports:
import 'dart:async';

import '../../../logic/types/user.dart';
import '../../interfaces/user_api.dart';

// Project imports:

/// dev
class DevUserApi implements UserApi {
  @override
  Future<User?> getUser({required String id}) async {
    return const User(
      id: 'TEST_USER_ID',
      nickname: 'テストユーザー',
    );
  }
}
