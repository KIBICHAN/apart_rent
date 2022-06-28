import 'package:apart_rent/constants.dart';
import 'package:apart_rent/screens/post_detail/body/body.dart';
import 'package:apart_rent/screens/post_manager/body/all_posts.dart';
import 'package:flutter/material.dart';

class PostDetailScreen extends StatelessWidget {
  static String routeName = "/detail";
  const PostDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PostId;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
              // borderRadius: BorderRadius.only(
              //     bottomRight: Radius.circular(8.0),
              //     bottomLeft: Radius.circular(8.0)),
              color: Colors.transparent,
              boxShadow: [
                BoxShadow(
                    color: kAppbarColor, offset: Offset(0, 2), blurRadius: 0),
              ],),
          child: AppBar(
            automaticallyImplyLeading: false,
            toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
            titleTextStyle: Theme.of(context).textTheme.headline6,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: kPrimaryColor,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 25,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Body(postId: args.id),
    );
  }
}
