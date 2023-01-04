import 'package:flutter/material.dart';

class NuDivider extends StatelessWidget {
  const NuDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1.5,
      indent: 16,
      endIndent: 16,
      color: Colors.grey,
    );
  }
}
