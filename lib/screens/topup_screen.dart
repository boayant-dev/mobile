import 'package:boayant/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helpers/dottedLinePainter.dart';

class TopupScreen extends StatelessWidget {
  const TopupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Paint _paint = Paint();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("How do you",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 36,
                        fontFamily: 'Poppins')),
                SizedBox(
                  height: 5,
                ),
                Text("want to top up?",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 36,
                        fontFamily: 'Poppins')),
                SizedBox(
                  height: 5,
                ),
                CustomPaint(painter: DottedHorizontalLine(_paint)),
                SizedBox(
                  height: 25,
                ),
                topUpList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView topUpList() {
    return ListView(
      children: [
        Card(
          color: Constants.boayantBlue,
          elevation: 4,
          child: ListTile(
            title: SvgPicture.asset('assets/svgs/top_up/flutterwave.svg'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),

            ///TODO Implement onTap
            onTap: () {},
            contentPadding: EdgeInsets.all(5),
          ),
        ),
        Card(
          color: Constants.boayantBlue,
          elevation: 4,
          child: ListTile(
            title: SvgPicture.asset('assets/svgs/top_up/paystack.svg'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),

            ///TODO Implement onTap
            onTap: () {},
            contentPadding: EdgeInsets.all(5),
          ),
        ),
        Card(
          color: Constants.boayantBlue,
          elevation: 4,
          child: ListTile(
            title: SvgPicture.asset('assets/svgs/top_up/kuda.svg'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),

            ///TODO Implement onTap
            onTap: () {},
            contentPadding: EdgeInsets.all(5),
          ),
        ),
        Card(
          color: Constants.boayantBlue,
          elevation: 4,
          child: ListTile(
            title: SvgPicture.asset('assets/svgs/top_up/bitcoin.svg'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),

            ///TODO Implement onTap
            onTap: () {},
            contentPadding: EdgeInsets.all(5),
          ),
        ),
        Card(
          color: Constants.boayantBlue,
          elevation: 4,
          child: ListTile(
            title: SvgPicture.asset('assets/svgs/top_up/bank.svg'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),

            ///TODO Implement onTap
            onTap: () {},
            contentPadding: EdgeInsets.all(5),
          ),
        ),
      ],
    );
  }
}
