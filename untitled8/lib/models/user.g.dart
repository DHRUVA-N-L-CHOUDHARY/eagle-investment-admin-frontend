// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


Usermodel _$UsermodelFromJson(Map<String, dynamic> json) => Usermodel(
      active: json["active"] as bool?,
        id: json["_id"] as String?,
        email: json["email"] as String?,
        name: json["name"] as String?,
        phoneNumber: json["phoneNumber"]  as String?,
        otp: json["otp"] as String?,
        age: json["age"] as String?,
        otpExp: DateTime.parse(json["otpExp"]) as DateTime?,
        createdAt: DateTime.parse(json["createdAt"]) as DateTime?,
        updatedAt: DateTime.parse(json["updatedAt"]) as DateTime?,
        v: json["__v"] as int?,
        gender: json["gender"] as String?,
        journalmodel: json["journalmodels"]
    );

Map<String, dynamic> _$UsermodelToJson(Usermodel instance) => <String, dynamic>{
      "active": instance.active,
        "_id": instance.id,
        "email": instance.email,
        "name": instance.name,
        "phoneNumber": instance.phoneNumber,
        "otp": instance.otp,
        "age": instance.age,
        "otpExp": instance.otpExp!.toIso8601String(),
        "createdAt": instance.createdAt!.toIso8601String(),
        "updatedAt": instance.updatedAt!.toIso8601String(),
        "__v": instance.v,
        "gender": instance.gender,
        "journal":instance.journalmodel,
    };
