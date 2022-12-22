import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/utils/colors_standard.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _itemMenu(icon: MdiIcons.clover, title: "Área Pix", isFirst: true),
            _itemMenu(icon: MdiIcons.barcode, title: "Pagar"),
            _itemMenu(icon: MdiIcons.cash, title: "Transferir"),
            _itemMenu(icon: MdiIcons.cash, title: "Depositar"),
            _itemMenu(icon: MdiIcons.creditCard, title: "Recarga"),
            _itemMenu(icon: MdiIcons.heartOutline, title: "Doação"),
            _itemMenu(icon: MdiIcons.creditCard, title: "Transferir"),
          ],
        ),
      ),
    );
  }

  _itemMenu({required IconData icon, required String title, bool? isFirst}) {
    return Container(
      padding: (isFirst ?? false)
          ? const EdgeInsets.only(right: 7, left: 20)
          : const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(48),
            ),
            child: Icon(icon),
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
