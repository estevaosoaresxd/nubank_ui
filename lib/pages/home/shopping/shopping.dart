import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Shopping extends StatelessWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _shoppingTextChevron(),
          _textBenefits(),
        ],
      ),
    );
  }

  _shoppingTextChevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Shopping",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(
          MdiIcons.chevronRight,
          color: Colors.black,
        )
      ],
    );
  }

  _textBenefits() {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: Text(
        "Vantagens exclusivas das nossas marcas\npreferidas.",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
