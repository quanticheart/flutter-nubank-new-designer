import 'package:flutter/material.dart';
import 'package:nubank_new/core/designer/default_space.dart';
import 'package:nubank_new/core/extentions/sys/build_context_ext.dart';
import 'package:nubank_new/ui/home/widgets/screen/nubank_theme.dart';

class AboutMore extends StatelessWidget {
  const AboutMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Descubra Mais",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16, bottom: 32),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                ItemMore(),
                ItemMore(),
                ItemMore(),
                ItemMore(),
                ItemMore(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemMore extends StatelessWidget {
  const ItemMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white, width: 1.2)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Convidar amigos",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                          "Tire seus amigos da fila do banco\n e tire eles da burocracia",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          )),
                    ],
                  ),
                  const Space(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: nuBankPurple(),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40))),
                          child: const Text(
                            "Convidar",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
