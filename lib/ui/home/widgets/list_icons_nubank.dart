import 'package:flutter/material.dart';

class NuListServices extends StatelessWidget {
  const NuListServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _actionsItem(
              icon: Icons.pix,
              name: "Pix",
            ),
            _actionsItem(
              icon: Icons.shopping_cart,
              name: "Pagar",
            ),
            _actionsItem(
              icon: Icons.account_balance_rounded,
              name: "Depositar",
            ),
            _actionsItem(
              icon: Icons.accessibility_new_outlined,
              name: "Transferir",
            ),
            _actionsItem(
              icon: Icons.credit_card,
              name: "Cartão",
            ),
            _actionsItem(
              icon: Icons.credit_score,
              name: "Score",
            ),
            _actionsItem(
              icon: Icons.account_balance,
              name: "Balance",
            ),
            _actionsItem(
              icon: Icons.pix,
              name: "Pix",
            ),
            _actionsItem(
              icon: Icons.pix,
              name: "Pix",
            ),
            _actionsItem(
              icon: Icons.pix,
              name: "Pix",
            ),
          ],
        ),
      ),
    );
  }
}

_actionsItem({required IconData icon, required String name}) {
  return Container(
    margin: const EdgeInsets.only(right: 16),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.grey[100]),
          child: Column(
            children: [
              Icon(icon, color: Colors.black),
            ],
          ),
        ),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
