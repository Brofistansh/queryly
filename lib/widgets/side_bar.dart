import 'package:flutter/material.dart';
import 'package:queryly/themes/colors.dart';
import 'package:queryly/widgets/side_bar_button.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isCollapsed ? 64 : 150,
      color: AppColors.sideNav,
      duration: const Duration(milliseconds: 100),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: isCollapsed ? 32 : 60,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: isCollapsed
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  text: ("Home"),
                  icon: Icons.add,
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  text: ("Search"),
                  icon: Icons.search,
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  text: ("Spaces"),
                  icon: Icons.language,
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  text: ("Discover"),
                  icon: Icons.auto_awesome,
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  text: ("Library"),
                  icon: Icons.cloud_outlined,
                ),
                const Spacer(),

                const SizedBox(height: 24),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              child: Icon(
                isCollapsed
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_left,
                color: AppColors.iconGrey,
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
