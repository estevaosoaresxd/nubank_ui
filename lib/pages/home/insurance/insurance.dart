import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/utils/colors_standard.dart';

class Insurance extends StatelessWidget {
  const Insurance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textInsurance(),
          _textProtection(),
          _lifeInsurance(),
        ],
      ),
    );
  }

  _textInsurance() {
    return const Text(
      "Seguros",
      style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
    );
  }

  _textProtection() {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: Text(
        "Proteção para você cuidar do que importa.",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  _lifeInsurance() {
    return Container(
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.only(top: 12, bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                MdiIcons.heartOutline,
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  "Seguro vida",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Conhecer",
              style: TextStyle(
                  color: backgroundColor, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
