import 'package:base_bloc_3/base/bloc/index.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'core_bloc.freezed.dart';
part 'core_bloc.g.dart';
part 'core_event.dart';
part 'core_state.dart';

@injectable
class CoreBloc extends BaseBloc<CoreEvent, CoreState> {
  CoreBloc() : super(CoreState.init()) {
    on<CoreEvent>((CoreEvent event, Emitter<CoreState> emit) async {
      await event.when(
        init: () => onInit(emit),
        changeIndex: (int i) => onChangeIndex(emit, i),
      );
    });
  }

  onInit(Emitter<CoreState> emit) {}

  onChangeIndex(Emitter<CoreState> emit, int i) {
    emit(state.copyWith(index: i));
  }
}
