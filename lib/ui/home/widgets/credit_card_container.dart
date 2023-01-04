import 'package:flutter/material.dart';
import 'package:nubank_new/core/designer/default_space.dart';

class CreditContainer extends StatelessWidget {
  const CreditContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.credit_card, color: Colors.grey),
            ],
          ),
          const Space(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Cartão de Crédito",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey)
            ],
          ),
          const Space(),
          const Text(
            "Fatura Atual",
            style: TextStyle(color: Colors.grey, fontSize: 17),
          ),
          const Space(),
          const Text(
            "R\$ 17.550,35",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Space(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Limite Disponível: ",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "R\$ 55.750,00",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
