import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled8/utils/ui_helpers.dart';
import 'package:untitled8/widgets/Custom_button.dart';
import 'package:untitled8/widgets/Custom_drop_down.dart';
import 'package:untitled8/widgets/Custom_input_field.dart';

class MCQUploadScreen extends StatelessWidget {
  const MCQUploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController question = TextEditingController();
    TextEditingController option1 = TextEditingController();
    TextEditingController option2 = TextEditingController();
    TextEditingController option3 = TextEditingController();
    TextEditingController option4 = TextEditingController();
    TextEditingController correctoption = TextEditingController();

  //   Future<dynamic> addUserInfo(JournalModel journalmodel) {
  //   print("djflksd");
  //   return FirebaseFirestore.instance
  //       .collection('users')
  //       .add(journalmodel.toJson())
  //       .then((value) => Get.to(() => Journal()))
  //       .catchError((error) => print("Failed to add user: $error"));
  // }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff01232C),
            Color(0xff001A24),
            Color(0xff096464),
            Color(0xff00131A),
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        ),
        child: Form(
          // key: journalupdateform,
          child: ListView(
            children: [
              ListTile(
                leading: IconButton(
                  onPressed: Navigator.of(context).pop,
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: ColorUtils.appWhite,
                    size: 20,
                  ),
                ),
                title: const Text(
                  "MCQ Questions Screen",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              // CustomButton(
              //   inptheight: 50,
              //   inptwidth: 250,
              //   inpttxt: "Upload Assignment",
              //   color: ColorUtils.appWhite,
              //   style: TextStyle(
              //       color: ColorUtils.textGreen,
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold),
              //   press: () {
              //     _pickfile();
              //   },
              // ),
              // SizedBox(
              //   height: 40,
              // ),
              const Padding(
                padding: EdgeInsets.only(left: 40.0, right: 40.0, bottom: 10.0),
                child: CustomDropDownButton(),
              ),
              
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25, bottom: 10.0),
                child: CustomInputField(
                  typeof: true,
                  suffix: false,
                  prefix: false,
                  labelText: "Question",
                  emptyValidation: false,
                  validation: (value) {
                    if (value == "") {
                      return "Question Should not be empty";
                    } else {
                      return null;
                    }
                  },
                  controller: question,
                  textInput: TextInputType.multiline,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25, bottom: 10.0),
                child: CustomInputField(
                  typeof: true,
                  suffix: false,
                  prefix: false,
                  labelText: "Option 1",
                  emptyValidation: false,
                  validation: (value) {
                    if (value == "") {
                      return "Option value Should not be empty";
                    } else {
                      return null;
                    }
                  },
                  controller: option1,
                  textInput: TextInputType.name,
                ),
              ),
               Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25, bottom: 10.0),
                child: CustomInputField(
                  typeof: true,
                  suffix: false,
                  prefix: false,
                  labelText: "Option 2",
                  emptyValidation: false,
                  validation: (value) {
                    if (value == "") {
                      return "Option value Should not be empty";
                    } else {
                      return null;
                    }
                  },
                  controller: option2,
                  textInput: TextInputType.name,
                ),
              ),
               Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25, bottom: 10.0),
                child: CustomInputField(
                  typeof: true,
                  suffix: false,
                  prefix: false,
                  labelText: "Option 3",
                  emptyValidation: false,
                  validation: (value) {
                    if (value == "") {
                      return "Option value Should not be empty";
                    } else {
                      return null;
                    }
                  },
                  controller: option3,
                  textInput: TextInputType.name,
                ),
              ),
               Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25, bottom: 10.0),
                child: CustomInputField(
                  typeof: true,
                  suffix: false,
                  prefix: false,
                  labelText: "Option 4",
                  emptyValidation: false,
                  validation: (value) {
                    if (value == "") {
                      return "Option value Should not be empty";
                    } else {
                      return null;
                    }
                  },
                  controller: option4,
                  textInput: TextInputType.name,
                ),
              ),
               Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25, bottom: 10.0),
                child: CustomInputField(
                  typeof: true,
                  suffix: false,
                  prefix: false,
                  labelText: "Correct answer",
                  emptyValidation: false,
                  validation: (value) {
                    if (value == "") {
                      return "Correct answer Should not be empty";
                    } else {
                      return null;
                    }
                  },
                  controller: correctoption,
                  textInput: TextInputType.name,
                ),
              ),
              CustomButton(
                inptheight: 50,
                inptwidth: 250,
                inpttxt: "UPDATE",
                color: ColorUtils.appWhite,
                style: TextStyle(
                    color: ColorUtils.textGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                press: () {
                  // if(_pickfile() != "")
                  // {
                  // ;
                  // }
                  // else{
                  //
                  // }
                },
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}