import 'package:apart_rent/components/custom_detail_post_text.dart';
import 'package:apart_rent/components/custom_text.dart';
import 'package:apart_rent/constants.dart';
import 'package:apart_rent/models/rent_post.dart';
import 'package:apart_rent/repository/api/api.dart';
import 'package:apart_rent/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  final int postId;
  const Body({Key? key, required this.postId}) : super(key: key);

  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {
  Future<RentPost>? futurePost;

  buildFutureData(BuildContext context) {
    return FutureBuilder<RentPost>(
      future: futurePost,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(snapshot.data!.imgUrl),
                        ),
                      ),
                    ),
                    Positioned(
                      width: SizeConfig.screenWidth,
                      top: 180,
                      left: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 4),
                                      blurRadius: 10),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  size: 25,
                                  color: kPrimaryColor,
                                ),
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
                              maxline: 20),
                        ),
                        SizedBox(
                          height: getProportionateScreenWidth(20),
                        ),
                        const CustomText(
                            text: "Vị trí:",
                            size: 18,
                            color: Colors.black,
                            maxline: 1),
                        SizedBox(
                          height: getProportionateScreenWidth(5),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(snapshot.data!.imgLocationUrl),
                            ),
                          ),
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
                                      (snapshot.data!.numBathroom).toString(),
                                  contentSize: 17,
                                  contentColor: Colors.black,
                                  maxline: 1),
                                  SizedBox(
                                height: getProportionateScreenHeight(50),
                              ),
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
            ),
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
    futurePost = fetchData(widget.postId);
  }

  @override
  Widget build(BuildContext context) {
    return buildFutureData(context);
  }
}
