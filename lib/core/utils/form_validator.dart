class FormValidator {
  FormValidator._();
  // Validates name
static  String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Name should not be empty";
    }
    return null;
  }

  // Validates email with Regex
 static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Email should not be empty";
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return "Enter a valid email address";
    }
    return null;
  }

  // Validates password (min 8 characters)
 static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password should not be empty";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters";
    }
    return null;
  }

  // Validates if two passwords match (for Sign Up)
 static String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return "Please confirm your password";
    }
    if (value != password) {
      return "Passwords do not match";
    }
    return null;
  }
}
