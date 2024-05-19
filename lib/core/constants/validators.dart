class Validators {
  static String? displayNamevalidator(String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'Display name cannot be empty';
    }
    if (displayName.length < 3 || displayName.length > 20) {
      return 'Display name must be between 3 and 20 characters';
    }

    return null; // Return null if display name is valid
  }

  static String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter an email';
    }
    if (!RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
        .hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  // static String? repeatPasswordValidator({String? value, String? password}) {
  //   if (value != password) {
  //     return "Passwords don't match";
  //   }
  //   return null;
  // }
  static String? displayAddressvalidator(String? displayAddress) {
    if (displayAddress == null || displayAddress.isEmpty) {
      return 'Display Address cannot be empty';
    }
    if (displayAddress.length < 50 || displayAddress.length > 255) {
      return 'Display Address must be between 50 and 255 characters';
    }

    return null; // Return null if display name is valid
  }
  static String? contactNumberValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter contactNumber';
    }
    if (value.length < 11) {
      return 'contactNumber must be 11 characters long';
    }
    return null;
  }
  static String? cardNumberValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter card number';
    }
    if (value.length != 16) {
      return 'Password must be 16 characters ';
    }
    return null;
  }
}
