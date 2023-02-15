import 'package:blockchain/const/constant.dart';
import 'package:blockchain/controller/home/network_card.dart';
import 'package:blockchain/model/home/network.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class NetworkCard extends StatefulWidget {
  const NetworkCard({super.key});

  @override
  State<NetworkCard> createState() => _NetworkCardState();
}

class _NetworkCardState extends State<NetworkCard> {
  List<Networks> network = <Networks>[];
  late NetworkDataSource networkDataSource;
  @override
  void initState() {
    network = Networks.getNetwork();
    networkDataSource = NetworkDataSource(networks: network);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    final height = MediaQuery.of(context).size.height;

    return Container(
      color: canvasColor,
      width: isSmallScreen ? width * .9 : width * .4,
      height: height / 1.9,
      // color: Colors.red,
      child: Column(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Netowrk",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: SfDataGrid(
              source: networkDataSource,
              columns: <GridColumn>[
                GridColumn(
                  columnName: 'id',
                  label: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerRight,
                    child: const Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                GridColumn(
                  columnName: 'name',
                  label: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Active',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                GridColumn(
                  columnName: 'designation',
                  width: 120,
                  label: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Deactive',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                GridColumn(
                  columnName: 'Date',
                  label: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerRight,
                    child: const Text(
                      'Date',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
