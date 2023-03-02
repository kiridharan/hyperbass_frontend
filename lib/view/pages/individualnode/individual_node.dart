import 'package:blockchain/view/components/home/topbar.dart';
import 'package:blockchain/view/pages/code/code_edittor_sm.dart';
import 'package:blockchain/view/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndividualNode extends StatefulWidget {
  const IndividualNode({super.key});

  @override
  State<IndividualNode> createState() => _IndividualNodeState();
}

class _IndividualNodeState extends State<IndividualNode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: TopBarFb(
          func: () {
            print("object");
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          autoback: true,
          title: 'Nodes',
          upperTitle: "Node Description",
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              CategoryCardMallika1(
                title: "Code Edit",
                image: "https://static.thenounproject.com/png/37814-200.png",
                // image: "null",
                onTap: () {
                  Get.to(() => const CodeEdit());
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Organisation:"),
                  Text(
                    "KCG College of Technology",
                    style: TextStyle(
                      color: Color(0xffFF8527),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // List view builder to show the list of nodes with icon to stop and start the node
          SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width - 20,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  // leading: const Icon(Icons.ac_unit),
                  title: const Text("Node 1"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},

                        // icon: const Icon(Icons.play_arrow),
                        icon: const Icon(
                          Icons.stop,
                          color: Colors.red,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCardMallika1 extends StatelessWidget {
  final String title;
  final String image;
  final Function() onTap;
  final bool selected;
  const CategoryCardMallika1(
      {required this.title,
      required this.image,
      required this.onTap,
      this.selected = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: selected ? 2 : 0, color: const Color(0xffFF8527)),
                  borderRadius: BorderRadius.circular(20.0)),
              child: image != "null"
                  ? ClipRRect(
                      child: Image.network(
                        image,
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffF2F2F2),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Color(0xffC4C4C4),
                      ),
                    ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  color: selected ? const Color(0xffFF8527) : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
