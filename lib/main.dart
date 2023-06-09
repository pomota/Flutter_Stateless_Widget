import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 70,
                    width: 50,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(children: [
                          const Text("Hey, ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              )),
                          Text("UUCM",
                              style: TextStyle(
                                color: Colors.teal.shade800,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              )),
                        ]),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ]),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Total balance",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "\$1 938 230",
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: "Transfer",
                        bgColor: Colors.teal.shade200,
                        textColor: Colors.black,
                      ),
                      Button(
                        text: "Request",
                        bgColor: Colors.teal.withOpacity(1),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Wallets",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: "Euro",
                    code: "Eur",
                    amount: "1 672 ",
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    translate: 0,
                  ),
                  const CurrencyCard(
                    name: "Bitcoin",
                    code: "BTC",
                    amount: "3 234 ",
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                    translate: -20,
                  ),
                  const CurrencyCard(
                      name: "Dollar",
                      code: "USD",
                      amount: "1 23",
                      icon: Icons.attach_money_outlined,
                      isInverted: false,
                      translate: -40)
                ],
              ),
            ),
          )),
    );
  }
}
