import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/utils/cards.dart';
import 'package:wallet_app/utils/myListTille.dart';

import '../utils/my_buttons.dart';

class MyCards extends StatefulWidget {
  const MyCards({
    super.key,
  });

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size mySize = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavBar
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: Icon(
          Icons.monetization_on,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 55,
              width: 55,
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/home.png",
                    color: Colors.pink[200],
                  )),
            ),
            Container(
              height: 55,
              width: 55,
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/settings.png",
                    color: Colors.grey[800],
                  )),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Мои",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Карты",
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 30,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mySize.height * 0.03,
                ),
                // Cards(),
                Container(
                  height: 240,
                  child: PageView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Cards(
                        nameCard: "VISA",
                        cardTextStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        balance: 5250.20,
                        numberCard: "**** 3456",
                        expiryMouth: 11,
                        expiryYear: 23,
                        color: Color.fromARGB(255, 121, 63, 222),
                      ),
                      Cards(
                          nameCard: "UnionPay",
                          cardTextStyle: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          balance: 25000.64,
                          numberCard: "**** 4455",
                          expiryMouth: 17,
                          expiryYear: 22,
                          color: Colors.blue),
                      Cards(
                          nameCard: "MasterCard ",
                          cardTextStyle: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          balance: 10000.71,
                          numberCard: "**** 8765",
                          expiryMouth: 10,
                          expiryYear: 21,
                          color: Colors.red),
                      Cards(
                          nameCard: "All Games ",
                          cardTextStyle: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          balance: 200000.71,
                          numberCard: "**** 9005",
                          expiryMouth: 13,
                          expiryYear: 20,
                          color: Colors.green),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  // effect:
                  //     ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
                ),
                SizedBox(
                  height: mySize.height * 0.03,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButtons(
                      UrlImg: "assets/images/send.jpeg",
                      textButton: "Отправлять",
                    ),
                    MyButtons(
                      UrlImg: "assets/images/pay.jpeg",
                      textButton: "Купить",
                    ),
                    MyButtons(
                      UrlImg: "assets/images/bills.jpeg",
                      textButton: "Счеты",
                    ),
                  ],
                ),
                SizedBox(
                  height: mySize.height * 0.05,
                ),
                const my_list_tille(
                    UrlImg: "assets/images/static.jpeg",
                    titleText: "Статистика",
                    contentText: "Платежи и прибыль"),
                const SizedBox(
                  height: 20,
                ),

                const my_list_tille(
                    UrlImg: "assets/images/deal.jpeg",
                    titleText: "Сделка",
                    contentText: "Cписание комиссий"),
                const SizedBox(
                  height: 20,
                ),
                const my_list_tille(
                    UrlImg: "assets/images/deal.jpeg",
                    titleText: "Сделка",
                    contentText: "Cписание комиссий")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
