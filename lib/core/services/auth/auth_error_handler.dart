String handleLoginError(String errorCode) {
  switch (errorCode) {
    case 'invalid-email':
    case 'wrong-password':
    case 'user-not-found':
      return "Invalid email or password";
    case 'user-disabled':
    case 'operation-not-allowed':
      return "disabled account contact support";
    case 'network-request-failed':
      return "Network error";
    case 'too-many-requests':
    case 'requires-recent-login':
      return "Please try again later";
    default:
      return errorCode.toString();
  }
}

String handleRegisterError(String errorCode) {
  switch (errorCode) {
    case 'invalid-email':
      return "Invalid email or password";
    case 'email-already-in-use':
      return "Email already exists";
    case 'weak-password':
      return "password is weak";
    case 'operation-not-allowed':
      return "disabled account contact support";
    case 'network-request-failed':
      return "Network error";
    case 'too-many-requests':
      return "Please try again later.";
    case 'credential-already-in-use':
      return "Try another credential ";
    case 'invalid-credential':
      return "Please try again.";
    default:
      return errorCode.toString();
  }
}
