import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color(0xFF5f5f5f).withOpacity(0.2),
              offset: Offset(2, 2),
              blurRadius: 30)
        ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25, top: 22),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.location_on, color: Constants.boayantBlue),
              Text('Lagos'),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 49, bottom: 15),
              child: Text('Hi, Abdulhaleem', style: TextStyle(fontSize: 24)),
            ),
            Text(
                'What do you want from us today? Tour around the app to see what we offer',
                style: TextStyle(fontSize: 14, fontFamily: 'Urbanist')),
            Container(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Column(children: [
                Align(alignment: Alignment.centerLeft, child: Text('From')),
                DropdownButton<String>(
                    value: 'Ikorodu',
                    isExpanded: true,
                    items: [
                      DropdownMenuItem(
                          child: Text('Ikorodu'), value: 'Ikorodu'),
                    ],
                    onChanged: (_) {}),
                Align(alignment: Alignment.centerLeft, child: Text('To')),
                DropdownButton<String>(
                    isExpanded: true,
                    value: 'Unilag',
                    items: [
                      DropdownMenuItem(child: Text('Unilag'), value: 'Unilag'),
                    ],
                    onChanged: (_) {}),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 25,
                    height: 25,
                    child: TextButton(
                        child: Icon(
                          Icons.arrow_forward,
                          size: 16,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Constants.boayantBlue,
                            shape: CircleBorder())
                        // color: Constants.boayantBlue,
                        ),
                  ),
                )
              ]),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            ),
            Text('More', style: TextStyle(fontSize: 18)),
            Container(width: 20, height: 2, color: Constants.boayantBlue),
            const SizedBox(height: 25),
            Wrap(
              children: [
                HomeMoreBox(
                  text: 'Rent Boat',
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svgs/rent_boat.svg',
                  ),
                  underlineColor: Constants.boayantBlue,
                ),
                HomeMoreBox(
                  text: 'News',
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svgs/news.svg',
                  ),
                  underlineColor: Constants.boayantYellow,
                ),
                HomeMoreBox(
                  text: 'Weather',
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svgs/weather.svg',
                  ),
                  underlineColor: Constants.boayantRed,
                ),
                HomeMoreBox(
                  text: 'Wallet',
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svgs/wallet.svg',
                  ),
                  underlineColor: Constants.boayantBlue,
                ),
                HomeMoreBox(
                  text: 'Partners',
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svgs/partners.svg',
                  ),
                  underlineColor: Constants.boayantYellow,
                ),
                HomeMoreBox(
                  text: 'Emergency',
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svgs/emergency.svg',
                  ),
                  underlineColor: Constants.boayantRed,
                ),
              ],
              spacing: 15,
              runSpacing: 25,
              direction: Axis.horizontal,
            )
          ]),
        ),
      )),
    );
  }
}

class HomeMoreBox extends StatelessWidget {
  final Function() onPressed;
  final Widget icon;
  final String text;
  final Color underlineColor;
  const HomeMoreBox({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.text,
    required this.underlineColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: 102,
            width: 93,
            color: Colors.white,
            child: Column(
              children: [
                Expanded(child: Center(child: icon)),
                Container(
                    color: underlineColor, width: double.infinity, height: 3)
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(text, style: TextStyle(fontSize: 14, fontFamily: 'Urbanist')),
      ],
    );
  }
}
