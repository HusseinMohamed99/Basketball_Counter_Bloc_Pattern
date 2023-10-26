import 'package:basketball/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  static CounterCubit get(context) => BlocProvider.of(context);

  int teamAPoint = 0;
  int teamBPoint = 0;
  void addPoint({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoint += buttonNumber;
      emit(CounterTeamAIncremented());
    } else {
      teamBPoint += buttonNumber;
      emit(CounterTeamBIncremented());
    }
  }

  void resetPoint() {
    teamAPoint = 0;
    teamBPoint = 0;
    emit(CounterReset());
  }
}
