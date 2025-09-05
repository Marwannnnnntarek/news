import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key, required this.header});
  final String header;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      width: double.infinity,
      height: 50,
      child: Center(
        child: RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            children: [
              TextSpan(text: header, style: TextStyle(color: Colors.black)),
              TextSpan(text: "News", style: TextStyle(color: Colors.orange)),
            ],
          ),
        ),
      ),
    );
  }
}
