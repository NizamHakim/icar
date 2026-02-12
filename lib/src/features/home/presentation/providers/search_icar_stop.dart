import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_icar_stop.g.dart';

@riverpod
class SearchIcarStop extends _$SearchIcarStop {
  @override
  String build() {
    return "";
  }

  void setSearchValue(String value) {
    state = value;
  }
}
