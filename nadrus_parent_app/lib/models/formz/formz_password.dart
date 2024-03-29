import 'package:formz/formz.dart';

enum PasswordValidationError { invalid, empty }

class FormzPassword extends FormzInput<String, PasswordValidationError> {
  const FormzPassword.pure() : super.pure('');
  const FormzPassword.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    }
    // TODO: validate you password
    return null;
  }
}

extension Explanation on PasswordValidationError {
  String? get message {
    switch (this) {
      case PasswordValidationError.invalid:
        return "Password invalid";
      default:
        return null;
    }
  }
}
