import 'package:base_bloc_3/features/example/domain/entity/player_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../base/network/errors/error.dart';

abstract class ExampleUseCase {
  Future<Either<BaseError, List<PlayerEntity>>> getData({
    required int offset,
    required int limit,
  });
}
