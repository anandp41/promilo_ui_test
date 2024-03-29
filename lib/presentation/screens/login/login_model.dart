// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  Status? status;
  Response? response;

  LoginModel({
    this.status,
    this.response,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        response: json["response"] == null
            ? null
            : Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status?.toJson(),
        "response": response?.toJson(),
      };
}

class Response {
  String? accessToken;
  String? tokenType;
  String? refreshToken;
  int? expiresIn;
  String? scope;
  List<dynamic>? userRole;
  String? tenantName;
  String? userType;
  String? userId;
  String? userName;

  Response({
    this.accessToken,
    this.tokenType,
    this.refreshToken,
    this.expiresIn,
    this.scope,
    this.userRole,
    this.tenantName,
    this.userType,
    this.userId,
    this.userName,
  });

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        refreshToken: json["refresh_token"],
        expiresIn: json["expires_in"],
        scope: json["scope"],
        userRole: json["user_role"] == null
            ? []
            : List<dynamic>.from(json["user_role"]!.map((x) => x)),
        tenantName: json["tenant_name"],
        userType: json["user_type"],
        userId: json["user_id"],
        userName: json["user_name"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "refresh_token": refreshToken,
        "expires_in": expiresIn,
        "scope": scope,
        "user_role":
            userRole == null ? [] : List<dynamic>.from(userRole!.map((x) => x)),
        "tenant_name": tenantName,
        "user_type": userType,
        "user_id": userId,
        "user_name": userName,
      };
}

class Status {
  int? code;
  dynamic message;

  Status({
    this.code,
    this.message,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}






















// // To parse this JSON data, do
// //
// //     final loginModel = loginModelFromJson(jsonString);

// import 'dart:convert';

// LoginModel loginModelFromJson(String str) =>
//     LoginModel.fromJson(json.decode(str));

// String loginModelToJson(LoginModel data) => json.encode(data.toJson());

// class LoginModel {
//   String? message;
//   String? accessToken;
//   String? tokenType;

//   LoginModel({
//     this.message,
//     this.accessToken,
//     this.tokenType,
//   });

//   factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
//         message: json["message"],
//         accessToken: json["access_token"],
//         tokenType: json["token_type"],
//       );

//   Map<String, dynamic> toJson() => {
//         "message": message,
//         "access_token": accessToken,
//         "token_type": tokenType,
//       };
// }

