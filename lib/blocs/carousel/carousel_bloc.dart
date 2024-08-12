import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'carousel_event.dart';
part 'carousel_state.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  CarouselBloc() : super(const CarouselState(currentIndex: 0)) {
    on<NextPageEvent>((event, emit) {
      final nextIndex = state.currentIndex + 1;
      emit(state.copyWith(currentIndex: nextIndex));
    });

    on<PreviousPageEvent>((event, emit) {
      final previousIndex = state.currentIndex != 0 ? state.currentIndex - 1 :0;
      emit(state.copyWith(currentIndex: previousIndex ));
    });
  }
}
