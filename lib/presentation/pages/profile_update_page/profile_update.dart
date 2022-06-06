import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'package:save_bill/routes/routes.dart';

class ProfileUpdatePage extends StatefulWidget {
  const ProfileUpdatePage({Key? key}) : super(key: key);

  @override
  State<ProfileUpdatePage> createState() => _ProfileUpdatePageState();
}

class _ProfileUpdatePageState extends State<ProfileUpdatePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _cntName;
  XFile? imageFile;
  @override
  void initState() {
    _cntName = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _cntName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height / 100;
    final wt = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Container(
                  height: ht * 50,
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: Stack(
                      children: [
                        GestureDetector(
                            onTap: () {
                              _pickImage();
                            },
                            child: Container(
                              height: wt * 40,
                              width: wt * 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageFile == null
                                      ? const AssetImage(
                                              Assets.assetsImagesDummyProfile)
                                          as ImageProvider
                                      : FileImage(File(imageFile!.path)),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(120.0)),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: ht * 5,
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _cntName,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          label: Text(
                            "Enter your name",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 15)),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z ]")),
                        FilteringTextInputFormatter.deny(RegExp("[ ]{2}"),
                            replacementString: " "),
                      ],
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter name";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: ht * 2,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: ht * 6,
                      width: wt * 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                            Navigator.pushNamedAndRemoveUntil(
                                context,
                                Routes.homepage,
                                (Route<dynamic> route) => false);
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.yellow),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        child: const Text("Proceed"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ht * 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _pickImage() async {
    ImagePicker().pickImage(source: ImageSource.gallery).then((value) {
      if (value != null) {
        _cropImage(value.path);
      } else {
        _clearImage();
      }
    });
  }

  _cropImage(path) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: path,
        aspectRatioPresets: Platform.isAndroid
            ? [
                CropAspectRatioPreset.square,
              ]
            : [
                CropAspectRatioPreset.square,
              ],
        uiSettings: [
          AndroidUiSettings(toolbarTitle: 'Cropper', lockAspectRatio: true),
          IOSUiSettings(title: 'Cropper', aspectRatioLockEnabled: true)
        ]);
    if (croppedFile != null) {
      imageFile = XFile(croppedFile.path);
    }
    setState(() {});
  }

  void _clearImage() {
    imageFile = null;
    setState(() {});
  }
}
