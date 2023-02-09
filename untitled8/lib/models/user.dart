// To parse this JSON data, do
//
//        Usermodel = UsermodelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class Usermodel {
  bool? active;
  String? id;
  String? email;
  String? name;
  String? phoneNumber;
  String? otp;
  DateTime? otpExp;
  DateTime? createdAt;
  String? age;
  DateTime? updatedAt;
  int? v;
  String? gender;
  Map<dynamic, String>? journalmodel;
  Usermodel(
      {this.active,
      this.id,
      this.email,
      this.name,
      this.phoneNumber,
      this.otp,
      this.otpExp,
      this.createdAt,
      this.updatedAt,
      this.v,
      this.age,
      this.gender,
      this.journalmodel});

  factory Usermodel.fromJson(Map<String, dynamic> json) =>
      _$UsermodelFromJson(json);
  Map<String, dynamic> toJson() => _$UsermodelToJson(this);
}
