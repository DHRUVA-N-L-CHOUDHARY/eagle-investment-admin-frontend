import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:untitled8/utils/ui_helpers.dart';
import 'package:untitled8/widgets/Custom_button.dart';
import 'package:untitled8/widgets/Custom_drop_down.dart';
import 'package:untitled8/widgets/Custom_input_field.dart';

class Coursesdetailsuploadscreen extends StatefulWidget {
  const Coursesdetailsuploadscreen({super.key});

  @override
  State<Coursesdetailsuploadscreen> createState() =>
      _CoursesdetailsuploadscreenState();
}

class _CoursesdetailsuploadscreenState
    extends State<Coursesdetailsuploadscreen> {
  final storageRef = FirebaseStorage.instance.ref();
  Future<String> _pickfile() async {
  String id = FirebaseAuth.instance.currentUser!.uid;
    FilePickerResult? selected = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    File file = File(selected?.files.first.path ?? "");
    if (file.existsSync()) {
      UploadTask uploadTask = storageRef
          .child("id/{id}_${selected?.files.first.name}")
          .putFile(file);
      var downloadUrl = await (await uploadTask).ref.getDownloadURL();
      return downloadUrl.toString();
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController coursetitle = TextEditingController();
    TextEditingController titledescription = TextEditingController();
// print(id);
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
                  "Journal Details Update",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, bottom: 10.0),
                child: CustomDropDownButton(),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25, bottom: 10.0),
                child: CustomInputField(
                  typeof: true,
                  suffix: false,
                  prefix: false,
                  labelText: "Course Title",
                  emptyValidation: false,
                  validation: (value) {
                    if (value == "") {
                      return "Course Title Should not be empty";
                    } else if (value.toString().length > 20) {
                      return "Course Title Should not be longer than 20 charaters";
                    } else {
                      return null;
                    }
                  },
                  controller: coursetitle,
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
                  labelText: "Title Description",
                  emptyValidation: false,
                  validation: (value) {
                    if (value == "") {
                      return "Title Description Should not be empty";
                    } else if (value.toString().length > 100) {
                      return "Title Description Should not be longer than 100 charaters";
                    } else {
                      return null;
                    }
                  },
                  controller: titledescription,
                  textInput: TextInputType.name,
                ),
              ),
              CustomButton(
                inptheight: 50,
                inptwidth: 250,
                inpttxt: "Upload Assignment",
                color: ColorUtils.appWhite,
                style: TextStyle(
                    color: ColorUtils.textGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                press: () {
                  _pickfile();
                },
              ),
               SizedBox(
                height: 40,
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
