import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          children: const [
            TextSpan(text: "News", style: TextStyle(color: Colors.black)),
            TextSpan(text: "Cloud", style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
    );
  }

  // Required for PreferredSizeWidget
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
