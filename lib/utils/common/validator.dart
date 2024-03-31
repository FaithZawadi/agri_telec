class Validator{
  static String? validateEmail(String? value){
    if (value!.isEmpty) {
      return 'Email is required';
    } else if(!_isValidEmail(value)){
      return 'Enter a valid email address';
    }
    return null;
  }

  static bool _isValidEmail(String value){
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(value);
  }

  static String? validatePassword(String? value){
    if (value!.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  static String? validateCfmpwd(String? value){
    if (value!.isEmpty) {
      return 'Confirm you password';
    }
    return null;
  }
  static String? validateFname(String? value){
    if (value!.isEmpty) {
      return 'First name is required';
    }
    return null;
  }
  static String? validateLname(String? value){
    if (value!.isEmpty) {
      return 'Last name is required';
    }
    return null;
  }

}