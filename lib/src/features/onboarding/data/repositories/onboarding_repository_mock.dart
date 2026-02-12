import 'package:icar/src/features/onboarding/data/datasource/onboarding_local_datasource.dart';
import 'package:icar/src/features/onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryMock extends OnboardingRepository {
  final OnboardingLocalDatasource _onboardingLocal;

  OnboardingRepositoryMock(this._onboardingLocal);

  @override
  bool getShouldShowOnboarding() {
    return true;
  }

  @override
  void setShouldShowOnboarding(bool shouldShowOnboarding) {
    _onboardingLocal.setShouldShowOnboarding(shouldShowOnboarding);
  }
}
