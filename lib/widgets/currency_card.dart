import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final double translate;

  const CurrencyCard({
    Key? key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.translate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColor = isInverted ? Colors.green.shade900 : Colors.white;
    final cardColor = isInverted ? Colors.white : Colors.green.shade900;
    return Transform.translate(
      offset: Offset(0, translate),
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: const Offset(-3, 13),
                  child: Icon(
                    icon,
                    color: textColor,
                    size: 88,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
