// Project imports:

import '../../../logic/types/user.dart';
import '../../interfaces/user_api.dart';

/// prd
class PrdUserAPi implements UserApi {
  @override
  Future<User?> getUser({required String id}) {
    throw UnimplementedError();
  }
}
