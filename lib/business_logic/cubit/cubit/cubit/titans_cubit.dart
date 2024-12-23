import '../../../../data/models/titans_model.dart';
import '../../../../data/repository/titan_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'titans_state.dart';

class TitansCubit extends Cubit<TitansState> {
  final TitansRepository titansRepository;
  List<Titan> titans = [];
  TitansCubit(this.titansRepository) : super(TitansInitial());

  List<Titan> getTitans() {
    titansRepository.getAllTitans().then((titans) {
      this.titans = titans;
      emit(TitansLoaded(titans));
    });
    return titans;
  }
}
