part of 'carousel_bloc.dart';

 class CarouselState extends Equatable {
  final int currentIndex;
  const CarouselState({required this.currentIndex});
  
    CarouselState copyWith({int? currentIndex}) {
    return CarouselState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }

  @override
  List<Object> get props => [currentIndex];
}


