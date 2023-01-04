import 'package:flutter/material.dart';
import 'package:nubank_new/core/designer/default_space.dart';
import 'package:nubank_new/core/extentions/sys/build_context_ext.dart';

class CardSection extends StatelessWidget {
  const CardSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: 60,
            width: context.screenWidth - 32,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  Icon(Icons.credit_card, color: Colors.grey),
                  Space(),
                  Text(
                    "Meus Cartões",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
