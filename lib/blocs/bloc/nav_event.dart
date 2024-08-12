part of 'nav_bloc.dart';

sealed class NavEvent extends Equatable {
  const NavEvent();

  @override
  List<Object> get props => [];


}

final class TriggerNavEvent extends NavEvent {
  final int index;

  const TriggerNavEvent({required this.index});
    @override
  List<Object> get props => [index];
}
