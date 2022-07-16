import 'dart:io';

import 'package:apart_rent/components/custom_drop_box.dart';
import 'package:apart_rent/components/custom_text_field.dart';
import 'package:apart_rent/constants.dart';
import 'package:apart_rent/size_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DescribeInformation extends StatefulWidget {
  const DescribeInformation({Key? key}) : super(key: key);

  @override
  _DescribeInformation createState() => _DescribeInformation();
}

class _DescribeInformation extends State<DescribeInformation> {
  //PlatformFile? pickedFile;
  UploadTask? uploadTask;
  File? image;
  XFile? pickImage;
  final ImagePicker _picker = ImagePicker();
  List<File> multipleImages = [];

  Future selectMultipleImages() async {
    List<XFile>? picked =
        await _picker.pickMultiImage(maxHeight: 200, maxWidth: 200);
    picked!.map((e) => File(e.path)).toList();
    setState(() {
      multipleImages = picked.map((e) => File(e.path)).toList();
    });
  }

  Future selectImage() async {
    //final result = await FilePicker.platform.pickFiles();
    // if(result == null) return;

    // setState(() {
    //   pickedFile = result.files.first;
    // });

    pickImage = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = File(pickImage!.path);
    });
  }

  Future uploadFile() async {
    final path = 'images/${pickImage!.name}';
    final file = File(pickImage!.path);

    final ref = FirebaseStorage.instance.ref().child(path);
    ref.putFile(file);

    final snapshot = await uploadTask!.whenComplete(() {});

    final urlDownload = await snapshot.ref.getDownloadURL();
    //print('Download link: $urlDownload'); //Debug only
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            const Card(
              elevation: 0,
              color: Color.fromARGB(176, 245, 245, 245),
              child: CustomTextField(
                  hint: "Dien tich",
                  label: "Dien tich",
                  type: TextInputType.number),
            ),
            SizedBox(
              height: getProportionateScreenWidth(3),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Expanded(
                  child: Card(
                    elevation: 0,
                    color: Color.fromARGB(176, 243, 243, 243),
                    child: CustomTextField(
                        hint: "Phòng ngủ",
                        label: "Số phòng ngủ",
                        type: TextInputType.number),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 0,
                    color: Color.fromARGB(176, 243, 243, 243),
                    child: CustomTextField(
                        hint: "Phòng vệ sinh",
                        label: "Số phòng vệ sinh",
                        type: TextInputType.number),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(3),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: Card(
                    elevation: 0,
                    color: const Color.fromARGB(176, 243, 243, 243),
                    child: CustomDropBox(
                        list: direction,
                        hint: "Chọn hướng nhà",
                        label: "Hướng nhà"),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 0,
                    color: const Color.fromARGB(176, 243, 243, 243),
                    child: CustomDropBox(
                        list: direction,
                        hint: "Hướng ban công",
                        label: "Chọn hướng ban công"),
                  ),
                ),
              ],
            ),
            const Card(
              elevation: 0,
              color: Color.fromARGB(176, 243, 243, 243),
              child: CustomTextField(
                  hint:
                      "Ví dụ: Đã có sổ đỏ, đã có sổ hồng, Đã được phê duyệt, ...",
                  label: "Thông tin pháp lý",
                  type: TextInputType.text),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Image.asset('assets/images/add_images.png'),
                iconSize: 70,
                onPressed: selectMultipleImages,
              ),
            ),
            SizedBox(
              height: 30,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5, crossAxisSpacing: 2, mainAxisSpacing: 3),
                itemCount: multipleImages.length,
                itemBuilder: (context, index) {
                  return GridTile(
                    child: Image.file(multipleImages[index]),
                  );
                },
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
          ],
        )),
      ),
    );
  }
}
