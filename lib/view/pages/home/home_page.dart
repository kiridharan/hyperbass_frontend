import 'package:blockchain/view/components/home/container_card.dart';
import 'package:blockchain/view/components/home/topbar.dart';
import 'package:blockchain/view/pages/individualnode/individual_node.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String imageURL = "assets/images/node.png";
  final _nodeData = [
    {
      "name": "Network 1",
      "status": "Running",
    },
    {
      "name": "Network 2",
      "status": "Running",
    },
    {
      "name": "Network 3",
      "status": "Running",
    },
    {
      "name": "Network 4",
      "status": "Running",
    },
    {
      "name": "Network 5",
      "status": "Running",
    },
    {
      "name": "Network 6",
      "status": "Running",
    },
    {
      "name": "Network 7",
      "status": "Running",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final isSmallScreen = MediaQuery.of(context).size.width < 600;
    // final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100.0),
            child: TopBarFb(
              func: () {
                // print("Back");
                Get.back();
              },
              autoback: false,
              title: "Dashboard",
              upperTitle: "Welcome Back,",
            )),
        backgroundColor: Colors.grey.shade200.withOpacity(.1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Wrap(
                    // crossAxisAlignment: WrapCrossAlignment
                    crossAxisAlignment: WrapCrossAlignment.start,
                    alignment: WrapAlignment.spaceEvenly,
                    // direction: Axis.horizontal,
                    spacing: 20,
                    runSpacing: 30,
                    children: [
                      ViewCards(
                        text: 2.toString(),
                        imageUrl: imageURL,
                        subtitle: "WORKSPACES",
                        onPressed: () {
                          // print("Network");
                        },
                      ),

                      ViewCards(
                        text: 3.toString(),
                        imageUrl: imageURL,
                        subtitle: "NETWORKS",
                        onPressed: () {
                          // print("Network");
                        },
                      ),

                      ViewCards(
                        text: 12.toString(),
                        imageUrl: imageURL,
                        subtitle: "NODES",
                        onPressed: () {
                          // print("Network");
                        },
                      ),

                      ViewCards(
                        text: 1.toString(),
                        imageUrl: imageURL,
                        subtitle: "CLOUDS",
                        onPressed: () {
                          // print("Network");
                        },
                      ),
                      // const NetworkCard()
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: width,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // ListView for showing all running nodes
                    child: ListView.builder(
                        itemCount: _nodeData.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () {
                              Get.to(() => const IndividualNode());
                            },
                            leading: const Icon(Icons.ac_unit),
                            title: Text(_nodeData[index]["name"] as String),
                            subtitle:
                                Text(_nodeData[index]["status"] as String),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
