import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:icar/src/shared/domain/entities/icar_stop.dart';
import 'package:icar/src/shared/domain/repositories/icar_stop_repository.dart';

part 'selected_icar_stop.g.dart';

@riverpod
class SelectedIcarStop extends _$SelectedIcarStop {
  @override
  IcarStop? build() {
    return null;
  }

  void setSelectedStop(IcarStop stop) {
    final icarStopRepository = ref.read(icarStopRepositoryProvider);
    icarStopRepository.addStopToHistory(stop.id);
    state = stop;
  }
}
