// To parse this JSON data, do
//
//     final JournalModel = JournalModelFromJson(jsonString);

// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

JournalModel JournalModelFromJson(String str) =>
    JournalModel.fromJson(json.decode(str));

String JournalModelToJson(JournalModel data) => json.encode(data.toJson());

class JournalModel {
  JournalModel({
    required this.script,
    required this.Time_in,
    required this.Time_out,
    required this.Type,
    required this.Reason_for_trade,
    required this.Quantity,
    required this.Entry,
    required this.Target,
    required this.stoploss,
    required this.exit,
    required this.result,
    required this.profitloss,
    required this.amount,
    required this.followmyrules,
    required this.remarks,
     this.email,
  });

  final String script;
  final String Time_in;
  final String Time_out;
  final String Type;
  final String Reason_for_trade;
  final String Quantity;
  final String Entry;
  final String Target;
  final String stoploss;
  final String exit;
  final String result;
  final String profitloss;
  final String amount;
  final String followmyrules;
  final String remarks;
  final String? email;

  factory JournalModel.fromJson(Map<String, dynamic> json) => JournalModel(
        script: json["script"],
        Time_in: json["_Time_in"],
        Time_out: json["_Time_out"],
        Type: json["Type"],
        Quantity: json["Quantity"],
        Entry: json["Entry"],
        Reason_for_trade: json["Reason_for_trade"],
        Target: json["Target"],
        stoploss: json["stoploss"],
        exit: json["exit"],
        result: json["result"],
        profitloss: json["profitloss"],
        amount: json["amount"],
        followmyrules: json["followmyrules"],
        remarks: json["remarks"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "script": script,
        "_Time_in": Time_in,
        "_Time_out": Time_out,
        "Type": Type,
        "Quantity": Quantity,
        "Entry": Entry,
        "Target": Target,
        "stoploss": stoploss,
        "exit": exit,
        "result": result,
        "Reason_for_trade": Reason_for_trade,
        "profitloss": profitloss,
        "amount": amount,
        "followmyrules": followmyrules,
        "remarks": remarks,
        "email": email,
      };
}
