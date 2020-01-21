// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as String,
    username: json['username'] as String,
    usernameCanonical: json['usernameCanonical'] as String,
    email: json['email'] as String,
    emailCanonical: json['emailCanonical'] as String,
    enabled: json['enabled'] as bool,
    salt: json['salt'] as String,
    password: json['password'] as String,
    plainPassword: json['plainPassword'] as String,
    lastLogin: json['lastLogin'] as String,
    confirmationToken: json['confirmationToken'] as String,
    passwordRequestedAt: json['passwordRequestedAt'] as String,
    groups: json['groups'] as List,
    roles: json['roles'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'usernameCanonical': instance.usernameCanonical,
      'email': instance.email,
      'emailCanonical': instance.emailCanonical,
      'enabled': instance.enabled,
      'salt': instance.salt,
      'password': instance.password,
      'plainPassword': instance.plainPassword,
      'lastLogin': instance.lastLogin,
      'confirmationToken': instance.confirmationToken,
      'passwordRequestedAt': instance.passwordRequestedAt,
      'groups': instance.groups,
      'roles': instance.roles,
    };
