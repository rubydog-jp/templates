// Project imports:
import 'config.dart';
import 'types/todo.dart';
import 'types/validation_result.dart';

/// Todoが正常かチェックするクラス
class TodoValidator {
  const TodoValidator();

  /// チェックする
  TodoValidationResult validate(Todo todo) {
    if (todo.text.length > todoConfig.maxTextLength) {
      // 文字数が長すぎる
      return TodoValidationResult.tooLongText;
    }

    // 正常
    return TodoValidationResult.ok;
  }
}
