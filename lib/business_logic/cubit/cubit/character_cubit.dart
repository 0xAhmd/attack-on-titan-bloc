import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/character.dart';
import '../../../data/repository/characters_repo.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharactersRepository charactersRepository;
  List<Character> characters = [];
  CharacterCubit(this.charactersRepository) : super(CharacterInitial());

  List<Character> getCharacters() {
    charactersRepository.getAllCharacters().then((characters) {
      this.characters = characters;
      emit(CharacterLoaded(characters));
    });
    return characters;
  }
}
