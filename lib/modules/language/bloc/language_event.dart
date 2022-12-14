part of 'language_bloc.dart';

abstract class LanguageEvent extends Equatable {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

class LanguageEventChanged extends LanguageEvent {
  final String language;

  const LanguageEventChanged(this.language);

  @override
  List<Object> get props => [language];
}
