import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/controllers/controller_home_page.dart';
import 'package:nubank/utils/colors_standard.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 12,
        children: [
          _iconCreditCard(),
          _textCreditCard(),
          _invoice(),
          _disponibleLimit(),
          _installMents()
        ],
      ),
    );
  }

  _iconCreditCard() {
    return const Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Cartão de credito",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(
          MdiIcons.chevronRight,
          color: Colors.black,
        )
      ],
    );
  }

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Fatura Atual",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 12,
        ),
        GetBuilder<ControllerHomePage>(
          init: ControllerHomePage(),
          builder: (controllerHomePage) {
            return Text(
              controllerHomePage.creditCardValue,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            );
          },
        ),
      ],
    );
  }

  _disponibleLimit() {
    return const Text(
      "Limite Disponivel de R\$ 4.222,00",
      style: TextStyle(color: Colors.grey),
    );
  }

  _installMents() {
    return Container(
      margin: const EdgeInsets.only(
        top: 4,
        bottom: 16,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text(
          "Parcelar compras",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
