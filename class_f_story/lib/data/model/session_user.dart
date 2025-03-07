class SessionUser {
  int? id;
  String? username;
  String? accessToken;
  bool? isLogin;

  SessionUser(
      {required this.id,
      required this.username,
      required this.accessToken,
      required this.isLogin});

  SessionUser copyWith(
      {int? id, String? username, String? accessToken, bool? isLogin}) {
    return SessionUser(
        id: id ?? this.id,
        username: username ?? this.username,
        accessToken: accessToken ?? this.accessToken,
        isLogin: isLogin ?? this.isLogin);
  }
}
