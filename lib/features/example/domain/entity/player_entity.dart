import '../../data/model/player/player.dart';

class PlayerEntity {
  final int? id;
  final String? firstName;
  final String? heightFeet;
  final String? heightInches;
  final String? lastName;
  final String? position;
  final Team? team;
  final String? weightPounds;

  PlayerEntity({
    this.id,
    this.firstName,
    this.heightFeet,
    this.heightInches,
    this.lastName,
    this.position,
    this.team,
    this.weightPounds,
  });

  factory PlayerEntity.fromModel(Player player) => PlayerEntity(
        id: player.id,
        firstName: player.firstName,
        heightFeet: player.heightFeet,
        heightInches: player.heightInches,
        lastName: player.lastName,
        position: player.position,
        team: player.team,
        weightPounds: player.weightPounds,
      );
}
