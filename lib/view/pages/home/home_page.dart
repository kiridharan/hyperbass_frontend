import 'package:blockchain/view/components/home/container_card.dart';
import 'package:blockchain/view/components/home/network_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final isSmallScreen = MediaQuery.of(context).size.width < 600;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            verticalDirection: VerticalDirection.down,
            direction: Axis.horizontal,
            spacing: width * .03,
            runSpacing: 8,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: width * .03,
                  runSpacing: 8,

                  // shrinkWrap: true,
                  children: const [
                    DashboardContainer(
                      text: "Total Nodes",
                      num: 3,
                    ),
                    DashboardContainer(
                      text: "Total Blocks",
                      num: 4,
                    ),
                    DashboardContainer(
                      text: "Total Transactions",
                      num: 5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: width * .03,
                  runSpacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  // shrinkWrap: true,
                  children: const [
                    NetworkCard(),
                    NetworkCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
        // const SizedBox(
        //   height: 10,
        // ),
      ],
    ));
  }
}
