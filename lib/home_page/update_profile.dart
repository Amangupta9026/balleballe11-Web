import 'dart:io';
import 'dart:ui';

import 'package:balleballe11/WebPAge/responsive.dart';
import 'package:balleballe11/constance/icon_constants.dart';
import 'package:balleballe11/constance/packages.dart';
import 'package:balleballe11/widget/gender.dart';
import 'package:balleballe11/widget/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final ImagePicker picker = ImagePicker();
  File _image;
  DateTime _selectedDate;
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  // TextEditingController _genderController = TextEditingController();
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _teamNameController = TextEditingController();

  Future<void> _setUserData() async {
    _fullNameController.text =
        SharedPreference.getValue(PrefConstants.USER_NAME);
    _userNameController.text =
        SharedPreference.getValue(PrefConstants.USER_NAME);
    _mobileController.text =
        SharedPreference.getValue(PrefConstants.USER_MOB_NO);
    _emailController.text = SharedPreference.getValue(PrefConstants.USER_EMAIL);
    //  _stateController.text = SharedPreference.getValue(PrefConstants.USER_STATE);

    // _textEditingController.text =
    //     SharedPreference.getValue(PrefConstants.USER_DOB);
    _teamNameController.text =
        SharedPreference.getValue(PrefConstants.TEAM_NAME);
  }

  @override
  void initState() {
    super.initState();
    //  _getUserData();
    _setUserData();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.unknown,
          PointerDeviceKind.stylus,
          PointerDeviceKind.invertedStylus
        },
      ),
      child: Stack(
        children: [
          if (Responsive.isDesktop(context))
            DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Utils.matchbackground),
                    fit: BoxFit.cover),
              ),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: Scaffold(
                      backgroundColor: ColorConstant.BACKGROUND_COLOR,
                      appBar: AppBar(
                        backgroundColor: ColorConstant.COLOR_WHITE,
                        leading: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: ColorConstant.COLOR_TEXT,
                          ),
                        ),
                        title: Text(
                          "Update Profile",
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                color: ColorConstant.COLOR_TEXT,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      body: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Center(
                                child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          showAlertDialog(context);
                                        },
                                        child: new Container(
                                          width: 80.0,
                                          height: 80.0,
                                          decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ColorConstant.COLOR_WHITE,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: _image != null
                                                    ? FileImage(_image)
                                                    // : userData.data?.logoUrl != null &&
                                                    //         userData.data?.logoUrl != ''
                                                    //     ? Image.memory(base64Decode(
                                                    //             userData.data?.logoUrl))
                                                    //         .image
                                                    : AssetImage(ImgConstants
                                                        .DEFAULT_PLAYER)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 35,
                                        right: 0,
                                        child: InkWell(
                                          onTap: () async {
                                            showAlertDialog(context);
                                          },
                                          child: Container(
                                            color: ColorConstant.COLOR_TEXT,
                                            //padding: EdgeInsets.fromLTRB(2, 1, 2, 1),
                                            child: Icon(
                                              Icons.edit,
                                              color: ColorConstant.COLOR_WHITE,
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                      )
                                    ]),
                              ],
                            )),

                            // TextField

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, bottom: 80),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Team Name (Nick Name)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),

                                  Container(
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.COLOR_WHITE,
                                        border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: TextFormField(
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: _teamNameController,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  .copyWith(
                                                      color: ColorConstant
                                                          .COLOR_BLACK,
                                                      fontSize: 16.0),
                                              keyboardType: TextInputType.text,
                                              decoration: new InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Name",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                          color: ColorConstant.COLOR_TEXT,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.COLOR_WHITE,
                                        border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: TextFormField(
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: _fullNameController,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  .copyWith(
                                                      color: ColorConstant
                                                          .COLOR_BLACK,
                                                      fontSize: 16.0),
                                              // validator: (fullName) {
                                              //   if (fullName.isEmpty) {
                                              //     return "Fullname is required";
                                              //   }
                                              //   return null;
                                              // },
                                              keyboardType: TextInputType.text,
                                              decoration: new InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // TextField Email

                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Email",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                          color: ColorConstant.COLOR_TEXT,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.COLOR_WHITE,
                                        border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: TextFormField(
                                              enabled: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: _emailController,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  .copyWith(
                                                      color: ColorConstant
                                                          .COLOR_BLACK,
                                                      fontSize: 16.0),
                                              // validator: (fullName) {
                                              //   if (fullName.isEmpty) {
                                              //     return "Fullname is required";
                                              //   }
                                              //   return null;
                                              // },
                                              keyboardType: TextInputType.text,
                                              decoration: new InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Mobile

                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Mobile",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                          color: ColorConstant.COLOR_TEXT,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.COLOR_WHITE,
                                        border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: TextFormField(
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: _mobileController,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  .copyWith(
                                                      color: ColorConstant
                                                          .COLOR_BLACK,
                                                      fontSize: 16.0),
                                              // validator: (fullName) {
                                              //   if (fullName.isEmpty) {
                                              //     return "Fullname is required";
                                              //   }
                                              //   return null;
                                              // },
                                              keyboardType: TextInputType.text,
                                              decoration: new InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Gender

                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Gender",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                          color: ColorConstant.COLOR_TEXT,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),

                                  GenderField(['Male', 'Female']),

                                  // Date of Birth

                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Date of Birth",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                          color: ColorConstant.COLOR_TEXT,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: Container(
                                      height: 35,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.COLOR_WHITE,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      6, 0, 0, 0),
                                              child: TextFormField(
                                                enabled: false,
                                                controller:
                                                    _textEditingController,
                                                onTap: () {
                                                  _selectDate(context);
                                                },
                                                decoration: new InputDecoration(
                                                  border: InputBorder.none,
                                                  hintStyle: new TextStyle(
                                                      color: Colors.grey),
                                                  hintText: "BirthDate",
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  // City

                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "City",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                          color: ColorConstant.COLOR_TEXT,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.COLOR_WHITE,
                                        border: Border.all(color: Colors.grey)),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 0, 0),
                                            child: TextFormField(
                                              textInputAction:
                                                  TextInputAction.next,
                                              //  controller: _fullNameController,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  .copyWith(
                                                      color: ColorConstant
                                                          .COLOR_BLACK,
                                                      fontSize: 16.0),
                                              // validator: (fullName) {
                                              //   if (fullName.isEmpty) {
                                              //     return "Fullname is required";
                                              //   }
                                              //   return null;
                                              // },
                                              keyboardType: TextInputType.text,
                                              decoration: new InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Action Button Upload Profile

                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: ColorConstant
                                            .COLOR_TEXT, // background
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Update Profile',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2
                                            .copyWith(
                                              color: ColorConstant.COLOR_WHITE,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (Responsive.isTablet(context) || Responsive.isMobile(context))
            Scaffold(
              backgroundColor: ColorConstant.BACKGROUND_COLOR,
              appBar: AppBar(
                backgroundColor: ColorConstant.COLOR_WHITE,
                leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: ColorConstant.COLOR_TEXT,
                  ),
                ),
                title: Text(
                  "Update Profile",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: ColorConstant.COLOR_TEXT,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Center(
                        child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(alignment: Alignment.bottomLeft, children: [
                          InkWell(
                            onTap: () {
                              showAlertDialog(context);
                            },
                            child: new Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConstant.COLOR_WHITE,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: _image != null
                                        ? FileImage(_image)
                                        // : userData.data?.logoUrl != null &&
                                        //         userData.data?.logoUrl != ''
                                        //     ? Image.memory(base64Decode(
                                        //             userData.data?.logoUrl))
                                        //         .image
                                        : AssetImage(
                                            ImgConstants.DEFAULT_PLAYER)),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 35,
                            right: 0,
                            child: InkWell(
                              onTap: () async {
                                showAlertDialog(context);
                              },
                              child: Container(
                                color: ColorConstant.COLOR_TEXT,
                                //padding: EdgeInsets.fromLTRB(2, 1, 2, 1),
                                child: Icon(
                                  Icons.edit,
                                  color: ColorConstant.COLOR_WHITE,
                                  size: 18.0,
                                ),
                              ),
                            ),
                          )
                        ]),
                      ],
                    )),

                    // TextField

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10, bottom: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Team Name (Nick Name)",
                            style: Theme.of(context).textTheme.caption.copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                color: ColorConstant.COLOR_WHITE,
                                border: Border.all(color: Colors.grey)),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      controller: _teamNameController,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                              color: ColorConstant.COLOR_BLACK,
                                              fontSize: 16.0),
                                      keyboardType: TextInputType.text,
                                      decoration: new InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Name",
                            style:
                                Theme.of(context).textTheme.bodyText2.copyWith(
                                      color: ColorConstant.COLOR_TEXT,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                color: ColorConstant.COLOR_WHITE,
                                border: Border.all(color: Colors.grey)),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      controller: _fullNameController,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                              color: ColorConstant.COLOR_BLACK,
                                              fontSize: 16.0),
                                      // validator: (fullName) {
                                      //   if (fullName.isEmpty) {
                                      //     return "Fullname is required";
                                      //   }
                                      //   return null;
                                      // },
                                      keyboardType: TextInputType.text,
                                      decoration: new InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // TextField Email

                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Email",
                            style:
                                Theme.of(context).textTheme.bodyText2.copyWith(
                                      color: ColorConstant.COLOR_TEXT,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                color: ColorConstant.COLOR_WHITE,
                                border: Border.all(color: Colors.grey)),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                    child: TextFormField(
                                      enabled: false,
                                      textInputAction: TextInputAction.next,
                                      controller: _emailController,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                              color: ColorConstant.COLOR_BLACK,
                                              fontSize: 16.0),
                                      // validator: (fullName) {
                                      //   if (fullName.isEmpty) {
                                      //     return "Fullname is required";
                                      //   }
                                      //   return null;
                                      // },
                                      keyboardType: TextInputType.text,
                                      decoration: new InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Mobile

                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Mobile",
                            style:
                                Theme.of(context).textTheme.bodyText2.copyWith(
                                      color: ColorConstant.COLOR_TEXT,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                color: ColorConstant.COLOR_WHITE,
                                border: Border.all(color: Colors.grey)),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      controller: _mobileController,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                              color: ColorConstant.COLOR_BLACK,
                                              fontSize: 16.0),
                                      // validator: (fullName) {
                                      //   if (fullName.isEmpty) {
                                      //     return "Fullname is required";
                                      //   }
                                      //   return null;
                                      // },
                                      keyboardType: TextInputType.text,
                                      decoration: new InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Gender

                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Gender",
                            style:
                                Theme.of(context).textTheme.bodyText2.copyWith(
                                      color: ColorConstant.COLOR_TEXT,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          GenderField(['Male', 'Female']),

                          // Date of Birth

                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Date of Birth",
                            style:
                                Theme.of(context).textTheme.bodyText2.copyWith(
                                      color: ColorConstant.COLOR_TEXT,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              _selectDate(context);
                            },
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  color: ColorConstant.COLOR_WHITE,
                                  border: Border.all(color: Colors.grey)),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                      child: TextFormField(
                                        enabled: false,
                                        controller: _textEditingController,
                                        onTap: () {
                                          _selectDate(context);
                                        },
                                        decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          hintStyle:
                                              new TextStyle(color: Colors.grey),
                                          hintText: "BirthDate",
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // City

                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "City",
                            style:
                                Theme.of(context).textTheme.bodyText2.copyWith(
                                      color: ColorConstant.COLOR_TEXT,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                color: ColorConstant.COLOR_WHITE,
                                border: Border.all(color: Colors.grey)),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      //  controller: _fullNameController,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                              color: ColorConstant.COLOR_BLACK,
                                              fontSize: 16.0),
                                      // validator: (fullName) {
                                      //   if (fullName.isEmpty) {
                                      //     return "Fullname is required";
                                      //   }
                                      //   return null;
                                      // },
                                      keyboardType: TextInputType.text,
                                      decoration: new InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Action Button Upload Profile

                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: ColorConstant.COLOR_TEXT, // background
                              ),
                              onPressed: () {},
                              child: Text(
                                'Update Profile',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(
                                      color: ColorConstant.COLOR_WHITE,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
        title: Text("Add Photo!"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await _imgFromGallery();
              },
              child: Text(
                "Choose from Gallery",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: ColorConstant.COLOR_TEXT,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancel",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: ColorConstant.COLOR_TEXT,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ));

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Future<void> _imgFromGallery() async {
    var status = await Permission.storage.status;
    if (status.isGranted) {
      XFile image =
          await picker.pickImage(source: ImageSource.gallery, imageQuality: 25);

      setState(() {
        _image = File(image.path);
      });
    } else {
      var permissionResult = await Permission.storage.request();
      if (permissionResult.isDenied || permissionResult.isPermanentlyDenied) {
        showDialog(
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
                  title: Text('Storage Permission'),
                  content: Text(
                      'This app needs storage access to take pictures for upload user profile photo'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('Deny'),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    CupertinoDialogAction(
                      child: Text('Settings'),
                      onPressed: () => openAppSettings(),
                    ),
                  ],
                ));
      }
    }
  }

  _selectDate(BuildContext context) async {
    DateTime newSelectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate != null ? _selectedDate : DateTime.now(),
        firstDate: DateTime(1960),
        lastDate: DateTime(2050),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: Colors.deepPurple,
                onPrimary: Colors.white,
                surface: Colors.blueGrey,
                onSurface: Colors.black,
              ),
              dialogBackgroundColor: Colors.white,
            ),
            child: child,
          );
        });

    if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat.yMMMd().format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream));
    }
  }
}
