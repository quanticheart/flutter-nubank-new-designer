import 'package:flutter/material.dart';

import '../../../core/designer/default_space.dart';

class SecurityLifeContainer extends StatelessWidget {
  const SecurityLifeContainer({
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
                  Icons.heart_broken,
                  color: Colors.grey,
                ),
              ],
            ),
            const Space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Seguro de vida",
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
              "Um seguro completo e que cabe no seu bolso",
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
