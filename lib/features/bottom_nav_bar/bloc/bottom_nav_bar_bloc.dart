import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  BottomNavBarBloc() : super(BottomNavBarInitial( tabIndex: 0)) {
    on<BottomNavBarEvent>((event, emit) {
      if (event is TabChange) {
        emit(BottomNavBarInitial(tabIndex: event.tabIndex));
      }
    }
    );
  }
}
