// ignore_for_file: must_be_immutable

part of 'android_large_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeElevenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeEleven widget is first created.
class AndroidLargeElevenInitialEvent extends AndroidLargeElevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends AndroidLargeElevenEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends AndroidLargeElevenEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
