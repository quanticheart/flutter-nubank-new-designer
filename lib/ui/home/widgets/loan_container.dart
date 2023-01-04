import 'package:flutter/material.dart';
import 'package:nubank_new/core/designer/default_space.dart';

class LoanContainer extends StatelessWidget {
  const LoanContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.local_atm_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
            const Space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Empréstimos",
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
              "Até R\$100.000,00 disponível para você",
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
