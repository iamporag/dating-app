import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'nav_event.dart';
part 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(const NavInitial()) {
    on<TriggerNavEvent>((event, emit) {
     emit(NavInitial(index: event.index));
    });
  }
}
