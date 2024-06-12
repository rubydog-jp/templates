// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../logic/types/app_update_policy.dart';
import '../../state/providers/app_update_policy.dart';
import '../dialogs/force_update.dart';
import '../dialogs/recommend_update.dart';
import '../logger.dart';

/// アプリアップデートの監視
class VersionUpdaterShell extends ConsumerWidget {
  const VersionUpdaterShell({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      appUpdatePolicyProvider,
      (_, asyncPolicy) {
        final policy = asyncPolicy.value;
        if (policy == null) return;
        switch (policy) {
          case AppUpdatePolicy.none:
            // DO NOTHING
            break;
          case AppUpdatePolicy.force:
            viewLogger.info('アップデート強制を検知しました');
            showForceUpdateDialog(context);
            break;
          case AppUpdatePolicy.recommend:
            viewLogger.info('アップデートおすすめを検知しました');
            showRecommendUpdateDialog(context);
            break;
        }
      },
    );
    return child;
  }
}
