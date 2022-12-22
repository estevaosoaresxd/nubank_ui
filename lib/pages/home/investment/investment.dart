import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/utils/colors_standard.dart';

class Investment extends StatelessWidget {
  const Investment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textInvestments(),
          _textNu(),
          _consultBalance(context),
        ],
      ),
    );
  }

  _textInvestments() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Investimentos",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(
          MdiIcons.chevronRight,
          color: Colors.black,
        )
      ],
    );
  }

  _textNu() {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: Text(
        "O jeito Nu de investir: sem asteriscos,\nlinguagem fácil a partir de R\$1. Saiba mais",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  _consultBalance(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.only(top: 12, bottom: 12),
      padding: const EdgeInsets.all(16),
      child: Row(children: [
        const Icon(
          MdiIcons.cash,
          color: Colors.black,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: const Text(
            "Consultar saldo para transferência",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ]),
    );
  }
}
