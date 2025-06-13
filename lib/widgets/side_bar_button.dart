import 'package:flutter/material.dart';
import 'package:queryly/themes/colors.dart';

class SideBarButton extends StatelessWidget {
  final bool isCollapsed;
  final String text;
  final IconData icon;
  const SideBarButton({
    super.key,
    required this.isCollapsed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isCollapsed
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: Icon(icon, color: AppColors.iconGrey, size: 22),
        ),
        isCollapsed
            ? SizedBox() 
            : Text(
                text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
      ],
    );
  }
}
