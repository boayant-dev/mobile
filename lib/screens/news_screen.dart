import 'package:boayant/helpers/customAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int length = 6;

  /// length = length of news database
  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'News',
        iconButton: IconButton(
          icon: SvgPicture.asset("assets/icons/menu"),

          /// TODO implement onPressed
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Select a Category",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
            ),
            SizedBox(height: 35),
            GridView.count(
              crossAxisCount: 2,
              children: List.generate(length, (index) {
                return Container();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
