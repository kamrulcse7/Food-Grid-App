import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_grid/screen/set_loction_screen.dart';
import 'package:food_grid/widget/custom_bg.dart';
import 'package:image_picker/image_picker.dart';

import '../const.dart';
import '../widget/custom_button.dart';
import '../widget/custom_leading_button.dart';

class UploadPhotoScreen extends StatefulWidget {
  const UploadPhotoScreen({super.key});

  @override
  State<UploadPhotoScreen> createState() => _UploadPhotoScreenState();
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen> {
  XFile? _image;

  chooseImageFromGC() async {
    ImagePicker _picker = ImagePicker();
    _image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  chooseImageFromCamera() async {
    ImagePicker _picker = ImagePicker();
    _image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CustomBg(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   bottom: PreferredSize(
        //     preferredSize: Size.fromHeight(0),
        //     child: CustomLeadingButton(
        //       onTap: () {},
        //     ),
        //   ),
        // ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(left: 25.0, top: 44.0, right: 25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomLeadingButton(
                  onTap: () => Navigator.pop(context),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upload Your photo \nprofile",
                        style: myTextStyle(
                          clr: Colors.white,
                          fw: FontWeight.w600,
                          size: 25.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "This data will be displayed in your account \nprofile for secuity",
                        style: myTextStyle(
                          clr: Color(0xFfC4C4C4),
                          fw: FontWeight.w400,
                          size: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                _image == null
                    ? Container(
                        child: Column(
                          children: [
                            imgChoiceBtn(
                              onTap: () {
                                chooseImageFromGC();
                              },
                              img: "gallery_logo.png",
                              title: "From Gallery",
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            imgChoiceBtn(
                              onTap: () {
                                chooseImageFromCamera();
                              },
                              img: "take_photo_logo.png",
                              title: "Take photo",
                            ),
                          ],
                        ),
                      )
                    : Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 242.0,
                          width: 236.0,
                          alignment: Alignment.topRight,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Color(0xFF252525),
                            image: DecorationImage(
                              image: FileImage(
                                File(_image!.path),
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  _image = null;
                                });
                              },
                              icon: Icon(
                                Icons.close,
                                size: 30.0,
                                color: Colors.red,
                              )),
                        ),
                      ),
                SizedBox(
                  height: 60.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    onTap: () {
                      Navigator.of(context).push(
                        nextPage(SetLocationScreen()),
                      );
                    },
                    height: 51.0,
                    width: 157.0,
                    title: "Next",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  imgChoiceBtn({String? img, String? title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 138.0,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF252525),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icon/$img"),
            SizedBox(
              height: 9.0,
            ),
            Text(
              "${title ?? ''}",
              style: myTextStyle(
                  clr: Colors.white, fw: FontWeight.w600, size: 14.0),
            )
          ],
        ),
      ),
    );
  }
}
