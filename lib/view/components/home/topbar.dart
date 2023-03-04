import 'package:blockchain/main.dart';
import 'package:blockchain/view/pages/createnode/create_node.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopBarFb extends StatelessWidget {
  final bool autoback;
  final String title;
  final String upperTitle;
  var func;
  TopBarFb(
      {required this.title,
      required this.func,
      required this.autoback,
      required this.upperTitle,
      Key? key})
      : super(key: key);
  final primaryColor = const Color(0xff9b9bfc);
  final secondaryColor = const Color(0xff0ebbde);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);
  @override
  Widget build(BuildContext context) {
    // check for the screen size
    final isSmallScreen = MediaQuery.of(context).size.width > 600;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [primaryColor, secondaryColor])),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          children: [
            autoback
                ? IconButton(
                    onPressed: func,
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  )
                : const SizedBox(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.normal)),
                Text(upperTitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold))
              ],
            ),
            const Spacer(),
            isSmallScreen
                ? Visibility(
                    child: Row(
                      children: [
                        // Icon button to navitate to the Home page , crerate node page and the profile page
                        IconButton(
                          onPressed: () {
                            Get.to(() => const CreateNode());
                          },
                          icon: const Icon(
                            Icons.create_outlined,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Get.to(() => const MyHomePage());
                          },
                          icon: const Icon(
                            Icons.home_filled,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Get.to(() => const Page4());
                          },
                          icon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
