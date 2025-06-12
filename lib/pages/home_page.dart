import 'package:flutter/material.dart';
import 'package:queryly/widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          //side nav bar
          SideBar(),
          Column(
            children: [
              //search section
              //footer
            ],
          ),
        ],
      ),
    );
  }
}
