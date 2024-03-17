bool phoneValidator(String value) {
  const pattern = r'(^(?:[+0]9)?[0-9]{11}$)';
  final regExp = RegExp(pattern);
  if (value.isEmpty) {
    return false;
  } else if (!regExp.hasMatch(value)) {
    return false;
  }
  return true;
}
