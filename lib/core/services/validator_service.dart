class ValidatorService {
   static final emailRegExp = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
      
  static String validateInput(String str, String errMessage) {
    if (str == null || str.isEmpty) {
      return errMessage;
    }
    return null;
  }

  static  String validateEmail(String value) {
    if (!emailRegExp.hasMatch(value.trim())) {
      return 'Email is invalid';
    }
    return null;
  }

 static String validatePassword(String value) {
    if (value.trim().isEmpty) {
      return 'Password cannot be empty';
    } else if (value.length <= 6) {
      return 'Password is too short';
    }
    return null;
  }
}
