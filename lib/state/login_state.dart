enum LoginStatus { initial, loading, success, failure }

class LoginState {
  final LoginStatus status;
  final String? errorMessage;

  LoginState({
    required this.status,
    this.errorMessage,
  });

  factory LoginState.initial() {
    return LoginState(status: LoginStatus.initial);
  }

  factory LoginState.loading() {
    return LoginState(status: LoginStatus.loading);
  }

  factory LoginState.success() {
    return LoginState(status: LoginStatus.success);
  }

  factory LoginState.failure(String errorMessage) {
    return LoginState(status: LoginStatus.failure, errorMessage: errorMessage);
  }
}
