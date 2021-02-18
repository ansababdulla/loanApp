import 'dart:io';

import 'package:chickly/utils/responsive.dart';
import 'package:chickly/widgets/rich_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class BasicInformation extends StatefulWidget {
  @override
  _BasicInformationState createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  bool checkboxValue = false;
  File imageFile;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF7F8F9),
        appBar: AppBar(
          backgroundColor: Color(0xff191B23),
          title: Text('Basic Informations',
              style: GoogleFonts.montserrat(
                  fontSize: 14, color: Color(0xff8D92A3))),
          leading: Transform.scale(
            scale: 0.5,
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
                padding: EdgeInsets.all(20.0),
                // margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showBottomSheets(context);
                        print('clicks');
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
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text('Tap here to take a photo or choose from library',
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Color(0xff8C9192),
                            fontWeight: FontWeight.normal)),
                  ],
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 40.0),
                // padding: EdgeInsets.all(25.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichTextWidget('Full Name'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Form(
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 10.0),
                                    border: InputBorder.none,
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffE8E9EA)),
                                        borderRadius:
                                            BorderRadius.circular(28.0)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffE8E9EA)),
                                        borderRadius:
                                            BorderRadius.circular(28.0))),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichTextWidget('Mobile Number'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Form(
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 10.0),
                                    border: InputBorder.none,
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffE8E9EA)),
                                        borderRadius:
                                            BorderRadius.circular(28.0)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffE8E9EA)),
                                        borderRadius:
                                            BorderRadius.circular(28.0))),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichTextWidget('Personal Email ID'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Form(
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 10.0),
                                    border: InputBorder.none,
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffE8E9EA)),
                                        borderRadius:
                                            BorderRadius.circular(28.0)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xffE8E9EA)),
                                        borderRadius:
                                            BorderRadius.circular(28.0))),
                              )
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
                                style: GoogleFonts.montserrat(
                                    fontSize: 12, color: Colors.black)),
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
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                              onPressed: () => {},
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
                        // cropImage(image);
                        // _imgFromGallery();
                        // Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () async {
                      // _imgFromCamera();
                      //  Navigator.of(context).pop();
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
