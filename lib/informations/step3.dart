import 'dart:io';
import 'package:chickly/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../consts/consts_value.dart';

class StepThreeVerify extends StatefulWidget {
  _StepThreeVerify createState() => _StepThreeVerify();
}

class _StepThreeVerify extends State<StepThreeVerify>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  List addressProofDropdown = ["Adhaar", "Id Card"];
  String adressProofValue = "Adhaar";
  File imageFile;
  final picker = ImagePicker();
  String uploadStatus = "";
  String documentType = "";

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);

    animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(controller);

    controller.forward();
  }

  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(
                  left: Responsive.width(40, context),
                  right: Responsive.width(41, context),
                  // top: Responsive.height(21, context)
                ),
                child: Text('Address Proof Document',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff676C6D),
                        fontSize: Responsive.height(14, context),
                        fontWeight: FontWeight.w600))),
            SizedBox(
              width: Responsive.width(10, context),
              height: Responsive.height(11, context),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.width(38, context),
                  right: Responsive.width(41, context)),
              child: Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                decoration: containerDecoration,
                child: DropdownButton(
                    icon: Icon(Icons.keyboard_arrow_down_sharp),
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    value: adressProofValue,
                    items: addressProofDropdown.map((valueitem) {
                      return DropdownMenuItem(
                          value: valueitem,
                          child: Text(valueitem, style: dropDownTextStyle));
                    }).toList(),
                    onChanged: (newvalue) {
                      setState(() {
                        adressProofValue = newvalue;
                      });
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.width(40, context),
                  right: Responsive.width(41, context),
                  top: Responsive.height(21, context)),
              child: Container(
                width: Responsive.width(294, context),
                height: Responsive.height(73, context),
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: Responsive.width(20, context)),
                    Container(
                      width: Responsive.width(170, context),
                      height: Responsive.height(70, context),
                      child: Row(children: [
                        Image.asset('assets/images/surface1.png',
                            width: Responsive.width(28.5, context),
                            height: Responsive.height(35.97, context)),
                        SizedBox(width: Responsive.width(10.5, context)),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Adhaar',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xff2D3233),
                                      fontSize: Responsive.height(14, context),
                                      fontWeight: FontWeight.w700)),
                              if (uploadStatus == "Success" &&
                                  documentType == "proof")
                                Text('Success',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.green,
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600)),
                              if (uploadStatus == "Failed" &&
                                  documentType == "proof")
                                Text('Failed',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xffEF4B5F),
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600))
                              else
                                Text('Upload your Adhaar',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xff676C6D),
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600))
                            ]),
                      ]),
                    ),
                    SizedBox(width: Responsive.width(10, context)),
                    Row(children: [
                      Container(
                        width: Responsive.width(75, context),
                        height: Responsive.height(33, context),
                        child: RaisedButton(
                            child: Text('Upload',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: Responsive.height(11, context),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                            color: Color(0xff6478D3),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            onPressed: () {
                              setState(() {
                                documentType = "proof";
                              });
                              showBottomSheets(context);
                            }),
                      )
                    ]),
                    SizedBox(width: Responsive.width(10, context)),
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: Responsive.width(40, context),
                    right: Responsive.width(41, context),
                    top: Responsive.height(21, context)),
                child: Text('Bank Statement',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff676C6D),
                        fontSize: Responsive.height(14, context),
                        fontWeight: FontWeight.w600))),
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.width(40, context),
                  right: Responsive.width(41, context),
                  top: Responsive.height(21, context)),
              child: Container(
                width: Responsive.width(294, context),
                height: Responsive.height(73, context),
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: Responsive.width(20, context)),
                    Container(
                      width: Responsive.width(170, context),
                      height: Responsive.height(70, context),
                      child: Row(children: [
                        Image.asset('assets/images/surface1.png',
                            width: Responsive.width(28.5, context),
                            height: Responsive.height(35.97, context)),
                        SizedBox(width: Responsive.width(10.5, context)),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Bank Statement',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xff2D3233),
                                      fontSize: Responsive.height(14, context),
                                      fontWeight: FontWeight.w700)),
                              if (uploadStatus == "Success" &&
                                  documentType == "bank")
                                Text('Success',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.green,
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600)),
                              if (uploadStatus == "Failed" &&
                                  documentType == "bank")
                                Text('Failed',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xffEF4B5F),
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600))
                              else
                                Text('Latest 6 months',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xff676C6D),
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600))
                            ]),
                      ]),
                    ),
                    SizedBox(width: Responsive.width(10, context)),
                    Row(children: [
                      Container(
                        width: Responsive.width(75, context),
                        height: Responsive.height(33, context),
                        child: RaisedButton(
                            child: Text('Upload',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: Responsive.height(11, context),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                            color: Color(0xff6478D3),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            onPressed: () {
                              setState(() {
                                documentType = "bank";
                              });
                              showBottomSheets(context);
                            }),
                      )
                    ]),
                    SizedBox(width: Responsive.width(10, context)),
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: Responsive.width(40, context),
                    right: Responsive.width(41, context),
                    top: Responsive.height(21, context)),
                child: Text('Salary Slip',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff676C6D),
                        fontSize: Responsive.height(14, context),
                        fontWeight: FontWeight.w600))),
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.width(40, context),
                  right: Responsive.width(41, context),
                  top: Responsive.height(21, context)),
              child: Container(
                width: Responsive.width(294, context),
                height: Responsive.height(73, context),
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: Responsive.width(20, context)),
                    Container(
                      width: Responsive.width(170, context),
                      height: Responsive.height(70, context),
                      child: Row(children: [
                        Image.asset('assets/images/surface1.png',
                            width: Responsive.width(28.5, context),
                            height: Responsive.height(35.97, context)),
                        SizedBox(width: Responsive.width(10.5, context)),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Salary Slip',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xff2D3233),
                                      fontSize: Responsive.height(14, context),
                                      fontWeight: FontWeight.w700)),
                              if (uploadStatus == "Success" &&
                                  documentType == "salary")
                                Text('Success',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.green,
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600)),
                              if (uploadStatus == "Failed" &&
                                  documentType == "salary")
                                Text('Failed',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xffEF4B5F),
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600))
                              else
                                Text('Latest 3 months',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xff676C6D),
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600))
                            ]),
                      ]),
                    ),
                    SizedBox(width: Responsive.width(10, context)),
                    Row(children: [
                      Container(
                        width: Responsive.width(75, context),
                        height: Responsive.height(33, context),
                        child: RaisedButton(
                            child: Text('Upload',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: Responsive.height(11, context),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                            color: Color(0xff6478D3),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            onPressed: () {
                              setState(() {
                                documentType = "salary";
                              });
                              showBottomSheets(context);
                            }),
                      )
                    ]),
                    SizedBox(width: Responsive.width(10, context)),
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: Responsive.width(40, context),
                    right: Responsive.width(41, context),
                    top: Responsive.height(21, context)),
                child: Text('Form 16',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff676C6D),
                        fontSize: Responsive.height(14, context),
                        fontWeight: FontWeight.w600))),
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.width(40, context),
                  right: Responsive.width(41, context),
                  top: Responsive.height(21, context)),
              child: Container(
                width: Responsive.width(294, context),
                height: Responsive.height(73, context),
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: Responsive.width(20, context)),
                    Container(
                      width: Responsive.width(170, context),
                      height: Responsive.height(70, context),
                      child: Row(children: [
                        Image.asset('assets/images/surface1.png',
                            width: Responsive.width(28.5, context),
                            height: Responsive.height(35.97, context)),
                        SizedBox(width: Responsive.width(10.5, context)),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Income Proof',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xff2D3233),
                                      fontSize: Responsive.height(14, context),
                                      fontWeight: FontWeight.w700)),
                              if (uploadStatus == "Success" &&
                                  documentType == "income")
                                Text('Success',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.green,
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600)),
                              if (uploadStatus == "Failed" &&
                                  documentType == "income")
                                Text('Failed',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xffEF4B5F),
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600))
                              else
                                Text('Latest',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xff676C6D),
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600))
                            ]),
                      ]),
                    ),
                    SizedBox(width: Responsive.width(10, context)),
                    Row(children: [
                      Container(
                        width: Responsive.width(75, context),
                        height: Responsive.height(33, context),
                        child: RaisedButton(
                            child: Text('Upload',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: Responsive.height(11, context),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                            color: Color(0xff6478D3),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            onPressed: () {
                              setState(() {
                                documentType = "income";
                              });
                              showBottomSheets(context);
                            }),
                      )
                    ]),
                    SizedBox(width: Responsive.width(10, context)),
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: Responsive.width(40, context),
                    right: Responsive.width(41, context),
                    top: Responsive.height(21, context)),
                child: Text('Land Tax Receipt (LTR)',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff676C6D),
                        fontSize: Responsive.height(14, context),
                        fontWeight: FontWeight.w600))),
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.width(40, context),
                  right: Responsive.width(41, context),
                  top: Responsive.height(21, context)),
              child: Container(
                width: Responsive.width(294, context),
                height: Responsive.height(73, context),
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: Responsive.width(20, context)),
                    Container(
                      width: Responsive.width(170, context),
                      height: Responsive.height(70, context),
                      child: Row(children: [
                        Image.asset('assets/images/surface1.png',
                            width: Responsive.width(28.5, context),
                            height: Responsive.height(35.97, context)),
                        SizedBox(width: Responsive.width(10.5, context)),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Land Tax',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xff2D3233),
                                      fontSize: Responsive.height(14, context),
                                      fontWeight: FontWeight.w700)),
                              if (uploadStatus == "Success" &&
                                  documentType == "tax")
                                Text('Success',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.green,
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600)),
                              if (uploadStatus == "Failed" &&
                                  documentType == "tax")
                                Text('Failed',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xffEF4B5F),
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600))
                              else
                                Text('Latest',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xff676C6D),
                                        fontSize:
                                            Responsive.height(12, context),
                                        fontWeight: FontWeight.w600))
                            ]),
                      ]),
                    ),
                    SizedBox(width: Responsive.width(10, context)),
                    Row(children: [
                      Container(
                        width: Responsive.width(75, context),
                        height: Responsive.height(33, context),
                        child: RaisedButton(
                            child: Text('Upload',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: Responsive.height(11, context),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                            color: Color(0xff6478D3),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            onPressed: () {
                              setState(() {
                                documentType = "tax";
                              });
                              showBottomSheets(context);
                            }),
                      )
                    ]),
                    SizedBox(width: Responsive.width(10, context)),
                  ],
                ),
              ),
            ),
            SizedBox(height: Responsive.height(37.5, context)),
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.width(128, context),
                  right: Responsive.width(127, context)),
              child: Container(
                width: Responsive.width(120, context),
                height: Responsive.height(38, context),
                child: RaisedButton(
                  color: Color(0xff6478D3),
                  child: Text('Continue',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: Responsive.height(13, context),
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
              ),
            ),
            SizedBox(height: Responsive.height(44, context)),
          ],
        ),
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
                        var image =
                            await picker.getImage(source: ImageSource.gallery);
                        setState(() {
                          if (image != null) {
                            imageFile = File(image.path);
                            uploadStatus = "Success";
                          } else {
                            uploadStatus = "Failed";
                          }
                        });
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () async {
                      Navigator.pop(context);
                      var image =
                          await picker.getImage(source: ImageSource.camera);
                      setState(() {
                        if (image != null) {
                          imageFile = File(image.path);
                          uploadStatus = "Success";
                        } else {
                          uploadStatus = "Failed";
                        }
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
