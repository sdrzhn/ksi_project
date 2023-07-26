abstract class LoginEvent {}

class LoginUserLoginChanged extends LoginEvent{
  final String login;

  LoginUserLoginChanged({required this.login});
}

class LoginPasswordChanged extends LoginEvent{
  final String password;

  LoginPasswordChanged({required this.password});
}

class LoginSubmitted extends LoginEvent{}