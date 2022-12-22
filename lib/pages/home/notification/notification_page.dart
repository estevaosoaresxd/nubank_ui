import 'package:flutter/material.dart';
import 'package:nubank/utils/colors_standard.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          _income(),
          _income(),
          _income(),
          _income(),
          _income(),
        ],
      ),
    );
  }

  _income() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20, bottom: 20),
      padding: const EdgeInsets.all(24),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.black, fontSize: 16),
          children: [
            const TextSpan(text: "Seu "),
            TextSpan(
                text: "Informe de \nrendimentos ",
                style: TextStyle(color: backgroundColor)),
            const TextSpan(
              text: "de 2021 já está...",
            )
          ],
        ),
      ),
    );
  }
}
