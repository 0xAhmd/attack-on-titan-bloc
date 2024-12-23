part of 'titans_cubit.dart';

@immutable
sealed class TitansState {}

final class TitansInitial extends TitansState {}
final class TitansLoaded extends TitansState {
  final List<Titan> titans;
  TitansLoaded(this.titans);
}
final class CharacterFailed extends TitansState {
  final String errmessage;
  CharacterFailed(this.errmessage);
}