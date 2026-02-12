import 'package:icar/src/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'should_show_onboarding.g.dart';

@riverpod
class ShouldShowOnboarding extends _$ShouldShowOnboarding {
  @override
  bool build() {
    OnboardingRepository onboardingRepository = ref.watch(
      onboardingRepositoryProvider,
    );
    return onboardingRepository.getShouldShowOnboarding();
  }

  void setShouldShowOnboarding(bool shouldShowOnboarding) {
    OnboardingRepository onboardingRepository = ref.read(
      onboardingRepositoryProvider,
    );
    onboardingRepository.setShouldShowOnboarding(shouldShowOnboarding);
    state = shouldShowOnboarding;
  }
}
