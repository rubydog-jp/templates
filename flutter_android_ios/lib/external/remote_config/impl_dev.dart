// Project imports:
import '../../logic/app_update_policy/types/app_ver_config.dart';
import '../../logic/semver/types/semver.dart';
import '../logger.dart';
import 'interface.dart';

class DevRemoteConfig implements RemoteConfig {
  @override
  Future<AppVerConfig> getAppVerConfig() async {
    externalLogger.info('最新のアプリバージョンを取得開始します');
    await Future.delayed(const Duration(seconds: 1));
    externalLogger.info('最新のアプリバージョンを取得完了しました');
    return const AppVerConfig(
      latest: Semver(0, 0, 0),
      minRecommended: Semver(0, 0, 0),
      minSupported: Semver(0, 0, 0),
    );
  }
}
