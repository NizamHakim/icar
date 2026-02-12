import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:icar/src/core/config/themes/app_colors.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/features/auth/presentation/providers/login.dart';
import 'package:icar/src/features/auth/presentation/widgets/auth_input.dart';
import 'package:icar/src/features/auth/presentation/widgets/submit_button.dart';
import 'package:icar/src/l10n/generated/auth_localizations.dart';
import 'package:icar/src/shared/presentation/widgets/root_container.dart';
import 'package:icar/src/utils/networks/post_response_handler.dart';
import 'package:icar/src/utils/show_snackbar.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(loginProvider, (_, next) {
      postResponseHandler(
        context,
        next,
        onSuccess: () {
          showSnackBar(context, AuthLocalizations.of(context)!.login_success);
        },
        onError: () {
          final failure = next.error as Failure;
          showSnackBar(
            context,
            failure.message,
            textColor: AppColors.white,
            backgroundColor: AppColors.error500,
          );
        },
      );
    });

    final loginFormErrors = ref.watch(loginFormErrorsProvider);
    final isLoading = ref.watch(loginProvider).isLoading;

    return Scaffold(
      appBar: AppBar(
        title: Text(AuthLocalizations.of(context)!.loginScreenTitle),
      ),
      body: RootContainer.roundedTop(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AuthInput(
                      label: AuthLocalizations.of(context)!.inputLabelEmail,
                      hint: AuthLocalizations.of(context)!.inputHintEmail,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      errorText:
                          loginFormErrors.email != null
                              ? AuthLocalizations.of(
                                context,
                              )!.inputEmailError(loginFormErrors.email!)
                              : null,
                    ),
                    const SizedBox(height: 20),
                    AuthInput(
                      label: AuthLocalizations.of(context)!.inputLabelPassword,
                      hint: AuthLocalizations.of(context)!.inputHintPassword,
                      controller: _passwordController,
                      isObscure: true,
                      errorText:
                          loginFormErrors.password != null
                              ? AuthLocalizations.of(
                                context,
                              )!.inputPasswordError(loginFormErrors.password!)
                              : null,
                    ),
                    const SizedBox(height: 32),
                    SubmitButton(
                      isLoading: isLoading,
                      label: AuthLocalizations.of(context)!.login,
                      onPressed: () async {
                        await ref
                            .read(loginProvider.notifier)
                            .login(
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              RichText(
                text: TextSpan(
                  text:
                      "${AuthLocalizations.of(context)!.doesntHaveAnAccount} ",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: AppColors.gray600),
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: GestureDetector(
                        onTap: () => context.go("/signup"),
                        child: Text(
                          AuthLocalizations.of(context)!.signup,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(
                            color: AppColors.primary500,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
