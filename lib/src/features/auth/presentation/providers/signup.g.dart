// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signupHash() => r'a769afbd57d0f038a0a974e8e85482e8e690c319';

/// See also [Signup].
@ProviderFor(Signup)
final signupProvider = AutoDisposeAsyncNotifierProvider<Signup, User?>.internal(
  Signup.new,
  name: r'signupProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$signupHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Signup = AutoDisposeAsyncNotifier<User?>;
String _$signupFormErrorsHash() => r'47b108eb447301645b6a9d777b12c1a60f46a2f4';

/// See also [SignupFormErrors].
@ProviderFor(SignupFormErrors)
final signupFormErrorsProvider = AutoDisposeNotifierProvider<
  SignupFormErrors,
  SignupFormErrorsState
>.internal(
  SignupFormErrors.new,
  name: r'signupFormErrorsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$signupFormErrorsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SignupFormErrors = AutoDisposeNotifier<SignupFormErrorsState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
