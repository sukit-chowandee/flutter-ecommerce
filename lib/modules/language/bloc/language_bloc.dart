import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageState()) {
    on<LanguageEventChanged>(_onLanguageChanged);
  }

  void _onLanguageChanged(
    LanguageEventChanged event,
    Emitter<LanguageState> emit,
  ) async {
    final language = event.language;
    emit(state.copyWith(
      language: language,
    ));
  }
}
