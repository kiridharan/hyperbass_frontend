import 'package:blockchain/view/components/common/button.dart';
import 'package:blockchain/view/components/createnode/textinput_field.dart';
import 'package:blockchain/view/components/home/topbar.dart';
import 'package:flutter/material.dart';

class CreateNode extends StatefulWidget {
  const CreateNode({super.key});

  @override
  State<CreateNode> createState() => _CreateNodeState();
}

class _CreateNodeState extends State<CreateNode> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100.0),
            child: TopBarFb(
              func: () => Navigator.pop(context),
              autoback: false,
              title: 'Create Node',
              upperTitle: "Create a new node",
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  EmailInputFb(
                    inputController: _controller,
                    hintText: 'Node Name',
                    text: 'Node Name',
                  ),
                  EmailInputFb(
                    inputController: _controller,
                    hintText: 'Node Name',
                    text: 'Node Name',
                  ),
                  EmailInputFb(
                    inputController: _controller,
                    hintText: 'Node Name',
                    text: 'Node Name',
                  ),
                  EmailInputFb(
                    inputController: _controller,
                    hintText: 'Node Name',
                    text: 'Node Name',
                  ),
                  EmailInputFb(
                    inputController: _controller,
                    hintText: 'Node Name',
                    text: 'Node Name',
                  ),
                  EmailInputFb(
                    inputController: _controller,
                    hintText: 'Node Name',
                    text: 'Node Name',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GradientButtonFb(
                    onPressed: () {},
                    text: 'Create Node',
                  )
                ],
              ),
            ),
          )),
    );
  }
}
