import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String id;
  String username;
  String usernameCanonical;
  String email;
  String emailCanonical;
  bool enabled;
  String salt;
  String password;
  String plainPassword;
  String lastLogin;
  String confirmationToken;
  String passwordRequestedAt;
  List<dynamic> groups;
  String roles;

  User(
      {this.id,
      this.username,
      this.usernameCanonical,
      this.email,
      this.emailCanonical,
      this.enabled,
      this.salt,
      this.password,
      this.plainPassword,
      this.lastLogin,
      this.confirmationToken,
      this.passwordRequestedAt,
      this.groups,
      this.roles});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
