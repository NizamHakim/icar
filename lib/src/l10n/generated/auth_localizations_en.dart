// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'auth_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AuthLocalizationsEn extends AuthLocalizations {
  AuthLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get loginScreenTitle => 'Login to your account';

  @override
  String get login => 'Login';

  @override
  String get haveAnAccount => 'Have an account?';

  @override
  String get signupScreenTitle => 'Create new account';

  @override
  String get signup => 'Signup';

  @override
  String get doesntHaveAnAccount => 'Doesn\'t have an account?';

  @override
  String get inputLabelName => 'Name';

  @override
  String get inputLabelEmail => 'Email';

  @override
  String get inputLabelPassword => 'Password';

  @override
  String get inputLabelConfirmPassword => 'Confirm Password';

  @override
  String get inputHintName => 'Enter your name';

  @override
  String get inputHintEmail => 'Enter your email';

  @override
  String get inputHintPassword => 'Enter your password';

  @override
  String get inputHintConfirmPassword => 'Enter your password';

  @override
  String inputNameError(String nameError) {
    String _temp0 = intl.Intl.selectLogic(
      nameError,
      {
        'name_required': 'Name is required',
        'other': 'Unknown value',
      },
    );
    return '$_temp0';
  }

  @override
  String inputEmailError(String emailError) {
    String _temp0 = intl.Intl.selectLogic(
      emailError,
      {
        'email_required': 'Email is required',
        'email_invalid': 'Email is invalid',
        'email_registered': 'Email is already registered',
        'credentials_mismatch': 'Email and password combination is incorrect',
        'other': 'Unknown value',
      },
    );
    return '$_temp0';
  }

  @override
  String inputPasswordError(String passwordError) {
    String _temp0 = intl.Intl.selectLogic(
      passwordError,
      {
        'password_required': 'Password is required',
        'password_tooShort': 'Password must be at least 8 characters long',
        'confirmPassword_required': 'Confirm password is required',
        'confirmPassword_mismatch': 'Confirm password and password does not match',
        'credentials_mismatch': 'Email and password combination is incorrect',
        'other': 'Unknown value',
      },
    );
    return '$_temp0';
  }

  @override
  String get login_success => 'Login successful';

  @override
  String get user_created_successfully => 'Account successfully created';

  @override
  String get logout_success => 'Logout successful';
}
