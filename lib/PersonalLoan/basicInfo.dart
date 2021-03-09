import 'dart:io';
import 'package:chickly/consts/consts_value.dart';
import 'package:chickly/utils/appcolors.dart';
import 'package:chickly/utils/responsive.dart';
import 'package:chickly/utils/validations.dart';
import 'package:chickly/widgets/rich_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/appcolors.dart';
import './personalInfo.dart';

class BasicInformationsPersonal extends StatefulWidget {
  @override
  _BasicInformationsState createState() => _BasicInformationsState();
}

class _BasicInformationsState extends State<BasicInformationsPersonal> {
  bool checkboxValue = false;
  File imageFile;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF7F8F9),
        appBar: AppBar(
          backgroundColor: Color(0xff191B23),
          title: Text('Basic Informations',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xff8D92A3))),
          leading: Transform.scale(
            scale: 0.7,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(23.0),
                // margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showBottomSheets(context);
                      },
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: imageFile == null
                            ? AssetImage('assets/images/basicinfoicon.png')
                            : FileImage(imageFile),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Your Picture',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            color: Color(0xFF676C6D),
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 8.0,
                    ),
                    Center(
                      child: Text(
                          'Tap here to take a photo or choose from library',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              color: Color(0xff8C9192),
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 40.0),
                // padding: EdgeInsets.all(25.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 21, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichTextWidget('Full Name'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Form(
                          key: formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextFormField(
                                decoration: formTextFieldStyle,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichTextWidget('Mobile Number'),
                              SizedBox(
                                height: 10.0,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: formTextFieldStyle,
                                validator: Validation.validatePhoneNumber,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichTextWidget('Personal Email ID'),
                              SizedBox(
                                height: 10.0,
                              ),
                              TextFormField(
                                  decoration: formTextFieldStyle,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: Validation.validateEmailAddress),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  checkboxValue = !checkboxValue;
                                });
                              },
                              child: checkboxValue
                                  ? Icon(
                                      Icons.radio_button_checked,
                                      color: Colors.blue,
                                      size: 20,
                                    )
                                  : Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                            ),
                            SizedBox(width: 5),
                            Text("Don’t Contact me yet",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textLabelGrey)),
                            SizedBox(width: 10),
                            Image.asset('assets/images/roundedqnmark.png')
                          ],
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Center(
                          child: ButtonTheme(
                            minWidth: 130.0,
                            height: 40.0,
                            child: RaisedButton(
                              color: Color(0xff6478D3),
                              child: Text('Continue',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () => {
                                if (formKey.currentState.validate())
                                  {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => PersonalInfo(),
                                    ))
                                  }
                                //     if (_formKey.currentState.validate()) {
                                //       // If the form is valid, display a snackbar. In the real world,
                                //       // you'd often call a server or save the information in a database.
                                //
                                //       Scaffold
                                //       .of(context)
                                //       .showSnackBar(SnackBar(content: Text('Processing Data')));
                                // }
                              },
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)),
                            ),
                          ),
                        ),
                      ]),
                ))
          ],
        )),
      ),
    );
  }

  void showBottomSheets(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Gallery'),
                      onTap: () async {
                        Navigator.pop(context);
                        var image = await ImagePicker.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          imageFile = image;
                        });
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () async {
                      Navigator.pop(context);
                      var image = await ImagePicker.pickImage(
                          source: ImageSource.camera);
                      setState(() {
                        imageFile = image;
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
