import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nubank_new/ui/home/widgets/screen/nubank_theme.dart';

class NuHeader extends StatefulWidget {
  final Function(bool) callback;

  const NuHeader({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  State<NuHeader> createState() => _NuHeaderState();
}

class _NuHeaderState extends State<NuHeader> {
  bool _showValue = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nuBankPurple(),
      child: Column(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF9720D7),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _showValue = !_showValue;
                            widget.callback(_showValue);
                          });
                        },
                        child: SvgPicture.asset(
                            !_showValue
                                ? 'assets/icons/eye-off-outline.svg'
                                : 'assets/icons/eye-outline.svg',
                            color: Colors.white,
                            semanticsLabel: 'eye'),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.question_mark_sharp,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              "Olá, User",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
