class LoginResult {
  final bool isSuccess;
  final String message;

  LoginResult({required this.isSuccess, required this.message});
}

class LoginBrain {
  static LoginResult validate(String username, String password) {
    if (username.trim().isEmpty || password.trim().isEmpty) {
      return LoginResult(
        isSuccess: false,
        message: "Login failed: fields cannot be empty",
      );
    } else {
      return LoginResult(
        isSuccess: true,
        message: "Login successful",
      );
    }
  }
}