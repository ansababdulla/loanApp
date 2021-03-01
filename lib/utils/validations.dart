class Validation {
  static String validatePhoneNumber(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    } else if (value.length < 10 || value.length > 10) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  static String validateEmailAddress(String value) {
    if (value.length == 0) {
      return 'Please enter email address';
    } else if (RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value) ==
        false) {
      return 'Please enter valid  email address';
    }
  }
}
