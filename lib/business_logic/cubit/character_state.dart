part of 'character_cubit.dart';

@immutable
sealed class CharacterState {}

final class CharacterInitial extends CharacterState {}
final class CharacterLoaded extends CharacterState {
  final List<Character> characters;
  CharacterLoaded(this.characters);
}
final class CharacterFailed extends CharacterState {
  final String errmessage;
  CharacterFailed(this.errmessage);
}
