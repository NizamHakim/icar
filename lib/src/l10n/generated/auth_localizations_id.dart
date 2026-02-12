// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'auth_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AuthLocalizationsId extends AuthLocalizations {
  AuthLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get loginScreenTitle => 'Masuk ke akunmu';

  @override
  String get login => 'Masuk';

  @override
  String get haveAnAccount => 'Sudah punya akun?';

  @override
  String get signupScreenTitle => 'Buat akun baru';

  @override
  String get signup => 'Daftar';

  @override
  String get doesntHaveAnAccount => 'Belum punya akun?';

  @override
  String get inputLabelName => 'Nama';

  @override
  String get inputLabelEmail => 'Email';

  @override
  String get inputLabelPassword => 'Password';

  @override
  String get inputLabelConfirmPassword => 'Konfirmasi Password';

  @override
  String get inputHintName => 'Masukkan nama';

  @override
  String get inputHintEmail => 'Masukkan email';

  @override
  String get inputHintPassword => 'Masukkan password';

  @override
  String get inputHintConfirmPassword => 'Masukkan password';

  @override
  String inputNameError(String nameError) {
    String _temp0 = intl.Intl.selectLogic(
      nameError,
      {
        'name_required': 'Nama tidak boleh kosong',
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
        'email_required': 'Email tidak boleh kosong',
        'email_invalid': 'Email tidak valid',
        'email_registered': 'Email sudah digunakan',
        'credentials_mismatch': 'Kombinasi email dan password salah',
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
        'password_required': 'Password tidak boleh kosong',
        'password_tooShort': 'Password minimal terdiri dari 8 karakter',
        'confirmPassword_required': 'Konfirmasi password tidak boleh kosong',
        'confirmPassword_mismatch': 'Konfirmasi password tidak sama dengan password',
        'credentials_mismatch': 'Kombinasi email dan password salah',
        'other': 'Unknown value',
      },
    );
    return '$_temp0';
  }

  @override
  String get login_success => 'Login berhasil';

  @override
  String get user_created_successfully => 'Akun berhasil dibuat';

  @override
  String get logout_success => 'Berhasil logout';
}
