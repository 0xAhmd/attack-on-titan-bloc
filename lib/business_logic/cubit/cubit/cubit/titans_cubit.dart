import 'package:attack_on_titan_bloc/data/models/titans_model.dart';
import 'package:attack_on_titan_bloc/data/repository/titan_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'titans_state.dart';

class TitansCubit extends Cubit<TitansState> {
  final TitansRepository titansRepository;
  List<Titan> titans = [];
  TitansCubit(this.titansRepository) : super(TitansInitial());

  List<Titan> getCharacters() {
    titansRepository.getAllTitans().then((titans) {
      this.titans = titans;
      emit(TitansLoaded(titans));
    });
    return titans;
  }
}
