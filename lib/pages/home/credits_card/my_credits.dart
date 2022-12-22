import 'package:flutter/material.dart';
import 'package:nubank/utils/colors_standard.dart';

class MyCreditsCard extends StatelessWidget {
  const MyCreditsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      padding: const EdgeInsets.all(15),
      child: Row(children: const [
        Icon(
          Icons.credit_card,
          color: Colors.black,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          "Meus cartões",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        )
      ]),
    );
  }
}
