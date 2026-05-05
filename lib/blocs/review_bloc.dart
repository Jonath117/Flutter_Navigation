import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ReviewEvent {}

class ToggleApproval extends ReviewEvent {
  final bool value;

  ToggleApproval({required this.value});
}

abstract class ReviewState {}

class ReviewInitial extends ReviewState {
  final bool approved;

  ReviewInitial({required this.approved});
}

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc() : super(ReviewInitial(approved: false)) {
    on<ToggleApproval>(_onToggleApproval);
  }

  void _onToggleApproval(ToggleApproval event, Emitter<ReviewState> emit) {
    emit(ReviewInitial(approved: event.value));
  }
}
