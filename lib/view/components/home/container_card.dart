// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blockchain/const/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardContainer extends StatelessWidget {
  final int num;
  final String text;
  const DashboardContainer({
    Key? key,
    required this.text,
    required this.num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: isSmallScreen ? width * .9 : width * .26,
      height: isSmallScreen ? height * .2 : height * .2,
      decoration: BoxDecoration(
        color: canvasColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: isSmallScreen ? 20 : 30,
              color: Colors.white,
            ),
          )),
          Center(
            child: Text(
              num.toString(),
              style: GoogleFonts.roboto(
                fontSize: isSmallScreen ? 20 : 30,
                color: Colors.white,
              ),
              // style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }
}
