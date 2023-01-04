import 'package:flutter/material.dart';
import 'package:nubank_new/core/extentions/sys/build_context_ext.dart';

class NuAccountValue extends StatelessWidget {
  final bool showValue;

  const NuAccountValue({Key? key, required this.showValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: context.screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Conta",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 22)),
                showValue
                    ? const Text(
                        "R\$ 1.997.853,37",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    : Container(
                        height: 24,
                        width: 160,
                        color: Colors.grey[300],
                      ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
