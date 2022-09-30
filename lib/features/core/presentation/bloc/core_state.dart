part of 'core_bloc.dart';

@CopyWith()
class CoreState extends BaseBlocState {
  const CoreState({
    required super.status,
    super.message,
    this.index = 0,
  });

  final int index;

  factory CoreState.init() {
    return const CoreState(status: BaseStateStatus.init);
  }

  @override
  List get props => [
        status,
        index,
        message,
      ];
}
