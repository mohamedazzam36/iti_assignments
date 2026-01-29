abstract class AppValidators {
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number can\'t be empty!';
    }
    final phoneRegex = RegExp(r'^\+?[0-9]{7,15}$');
    if (!phoneRegex.hasMatch(value)) {
      return 'Please enter a valid phone number!';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email can\'t be empty!';
    }
    final emailRegex = RegExp(r'^[\w^_]+[\w_.+]*@[\w^_]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address!';
    }
    return null;
  }

  static bool validatePasswordLength(String? value) {
    if (value!.length < 8) {
      return false;
    }
    return true;
  }

  static bool validatePasswordNumber(String? value) {
    final numberRegex = RegExp(r'[0-9]');
    if (!numberRegex.hasMatch(value!)) {
      return false;
    }
    return true;
  }
}
