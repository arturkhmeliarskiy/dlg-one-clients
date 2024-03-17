bool passwordValidator(String? password, String? repassword) {
  return password != null &&
      repassword != null &&

      /// пароль >= 6
      (password.length >= 6) &&

      /// повтор пароля >= 6
      (repassword.length >= 6) &&

      /// пароли совпадают
      (password == repassword);
}
