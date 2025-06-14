import 'package:flutter/material.dart';
import 'package:queryly/widgets/search_section.dart';
import 'package:queryly/widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideBar(),
          Expanded(
            child: Column(
              children: [
                Expanded(child: const SearchSection()),
                Container(height: 20),
                //footer
              ],
            ),
          ),
        ],
      ),
    );
  }
}
