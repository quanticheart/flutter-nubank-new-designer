import 'package:flutter/material.dart';
import 'package:nubank_new/core/designer/divider.dart';
import 'package:nubank_new/core/designer/default_space.dart';
import 'package:nubank_new/ui/home/widgets/card_container.dart';
import 'package:nubank_new/ui/home/widgets/credit_card_container.dart';
import 'package:nubank_new/ui/home/widgets/head_nubank.dart';
import 'package:nubank_new/ui/home/widgets/investment_container.dart';
import 'package:nubank_new/ui/home/widgets/list_icons_nubank.dart';
import 'package:nubank_new/ui/home/widgets/loan_container.dart';
import 'package:nubank_new/ui/home/widgets/nu_about_more.dart';
import 'package:nubank_new/ui/home/widgets/nu_account_value.dart';
import 'package:nubank_new/ui/home/widgets/screen/nubank_theme.dart';
import 'package:nubank_new/ui/home/widgets/security_life_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nuBankPurple(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              NuHeader(
                callback: (bool) {
                  setState(() {
                    showValue = bool;
                  });
                },
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    NuAccountValue(
                      showValue: showValue,
                    ),
                    const Space(),
                    const NuListServices(),
                    const Space(),
                    const CardSection(),
                    const Space(),
                    const NuDivider(),
                    const CreditContainer(),
                    const Space(),
                    const NuDivider(),
                    const LoanContainer(),
                    const Space(),
                    const NuDivider(),
                    const InvestmentContainer(),
                    const Space(),
                    const NuDivider(),
                    const SecurityLifeContainer(),
                    const Space(),
                    const NuDivider(),
                    const AboutMore()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
