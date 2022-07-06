class Login_model {
  final String user;
  final String pwd;
  Login_model(this.user, this.pwd);
  @override
  String toString() {
    return "User:${this.user}    Pwd:${this.pwd}";
  }
}