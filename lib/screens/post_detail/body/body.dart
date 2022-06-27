import 'package:apart_rent/components/custom_detail_post_text.dart';
import 'package:apart_rent/components/custom_text.dart';
import 'package:apart_rent/constants.dart';
import 'package:apart_rent/models/rent_post.dart';
import 'package:apart_rent/repository/api/api.dart';
import 'package:apart_rent/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  _Body createState() => _Body();
}

class _Body extends State<Body> {
  Future<RentPost>? futurePost;

  buildFutureData(BuildContext context) {
    return FutureBuilder<RentPost>(
      future: futurePost,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  //const Image(image: NetworkImage("snapshot.data![index].imgUrl"),),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(snapshot.data!.imgUrl),
                      ),
                    ),
                  ),
                  Positioned(
                    width: SizeConfig.screenWidth,
                    top: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 15,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      CustomText(
                        text: snapshot.data!.title,
                        size: 18,
                        color: Colors.black,
                        maxline: 2,
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(5),
                      ),
                      CustomText(
                          text: snapshot.data!.price,
                          size: 18,
                          color: Colors.green,
                          maxline: 1),
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      const CustomText(
                          text: "Mô tả:",
                          size: 18,
                          color: Colors.black,
                          maxline: 1),
                      SizedBox(
                        height: getProportionateScreenWidth(5),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: CustomText(
                            text: snapshot.data!.description,
                            size: 18,
                            color: Colors.black,
                            maxline: 4),
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      const CustomText(
                          text: "Thông tin chi tiết:",
                          size: 18,
                          color: Colors.black,
                          maxline: 1),
                      SizedBox(
                        height: getProportionateScreenWidth(5),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            CustomDetailPostText(
                                titleSection: "Diện tích: ",
                                titleSize: 17,
                                titleColor: kSecondaryColor,
                                contentSection: snapshot.data!.area,
                                contentSize: 17,
                                contentColor: Colors.black,
                                maxline: 1),
                            SizedBox(
                              height: getProportionateScreenWidth(2),
                            ),
                            CustomDetailPostText(
                                titleSection: "Địa chỉ: ",
                                titleSize: 17,
                                titleColor: kSecondaryColor,
                                contentSection:
                                    "Đường ${snapshot.data!.street}, Phường ${snapshot.data!.commune}, ${snapshot.data!.district}, Thành phố ${snapshot.data!.city}",
                                contentSize: 17,
                                contentColor: Colors.black,
                                maxline: 3),
                            SizedBox(
                              height: getProportionateScreenWidth(2),
                            ),
                            // CustomDetailPostText(
                            //     titleSection: "Loai tin: ",
                            //     titleSize: 18,
                            //     titleColor: kSecondaryColor,
                            //     contentSection: "snapshot.data!.type",
                            //     contentSize: 18,
                            //     contentColor: Colors.black,
                            //     maxline: 1),
                            CustomDetailPostText(
                                titleSection: "Hướng nhà: ",
                                titleSize: 17,
                                titleColor: kSecondaryColor,
                                contentSection: snapshot.data!.directHouse,
                                contentSize: 17,
                                contentColor: Colors.black,
                                maxline: 1),
                            SizedBox(
                              height: getProportionateScreenWidth(2),
                            ),
                            CustomDetailPostText(
                                titleSection: "Hướng ban công: ",
                                titleSize: 17,
                                titleColor: kSecondaryColor,
                                contentSection: snapshot.data!.directBalcony,
                                contentSize: 17,
                                contentColor: Colors.black,
                                maxline: 1),
                            SizedBox(
                              height: getProportionateScreenWidth(2),
                            ),
                            CustomDetailPostText(
                                titleSection: "Số phòng ngủ: ",
                                titleSize: 17,
                                titleColor: kSecondaryColor,
                                contentSection:
                                    (snapshot.data!.numBedroom).toString(),
                                contentSize: 17,
                                contentColor: Colors.black,
                                maxline: 1),
                            SizedBox(
                              height: getProportionateScreenWidth(2),
                            ),
                            CustomDetailPostText(
                                titleSection: "Số phòng vệ sinh: ",
                                titleSize: 17,
                                titleColor: kSecondaryColor,
                                contentSection:
                                    (snapshot.data!.area).toString(),
                                contentSize: 17,
                                contentColor: Colors.black,
                                maxline: 1),
                          ],
                        ),
                      ),
                      // CustomDetailPostText(
                      //     titleSection: "Ngay dang tin: ",
                      //     titleSize: 18,
                      //     titleColor: kSecondaryColor,
                      //     contentSection: snapshot.data!.postDay,
                      //     contentSize: 18,
                      //     contentColor: Colors.black,
                      //     maxline: 1),
                    ],
                  ),
                ),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return Text(
            '${snapshot.error}',
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.green),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    futurePost = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [buildFutureData(context)],
      ),
    );
  }
}
