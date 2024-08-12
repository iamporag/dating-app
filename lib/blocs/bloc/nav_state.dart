part of 'nav_bloc.dart';

sealed class NavState extends Equatable {
  const NavState();
  
  @override
  List<Object> get props => [];
}

 class NavInitial extends NavState {
  final int index;

  const NavInitial({this.index = 0});
  @override
  List<Object> get props => [index];
}
