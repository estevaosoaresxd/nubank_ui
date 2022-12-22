import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// PAGES
import 'package:nubank/pages/home/account/account.dart';
import 'package:nubank/pages/home/actions/menu_items.dart';
import 'package:nubank/pages/home/credits_card/credit_card.dart';
import 'package:nubank/pages/home/credits_card/my_credits.dart';
import 'package:nubank/pages/home/find_out.dart/find_out.dart';
import 'package:nubank/pages/home/insurance/insurance.dart';
import 'package:nubank/pages/home/investment/investment.dart';
import 'package:nubank/pages/home/model/header.dart';
import 'package:nubank/pages/home/notification/notification_page.dart';
import 'package:nubank/pages/home/shopping/shopping.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Header(),
              Account(),
              MenuItems(),
              Divider(
                thickness: 1.6,
              ),
              MyCreditsCard(),
              Divider(
                thickness: 1.6,
              ),
              NotificationPage(),
              Divider(
                thickness: 1.6,
              ),
              CreditCard(),
              Divider(
                thickness: 1.6,
              ),
              Investment(),
              Divider(
                thickness: 1.6,
              ),
              Insurance(),
              Divider(
                thickness: 1.6,
              ),
              Shopping(),
              Divider(
                thickness: 1.6,
              ),
              FindOut()
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(
        0,
      ),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
