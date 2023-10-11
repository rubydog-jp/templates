import 'package:my_app/core/types/analytics_event.dart';
import 'package:my_app/runner/interfaces/firebase.dart';

/// 開発環境用のFirebaseサービス
class FakeFirebaseService implements FirebaseService {
  @override
  Future<void> init() async {
    // DO NOTHING
  }

  @override
  Future<void> sendEvent(AnalyticsEvent event) async {
    // DO NOTHING
  }
}
