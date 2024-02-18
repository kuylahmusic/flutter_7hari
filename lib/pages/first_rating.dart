import 'package:flutter/material.dart';
import '../widgets/theme.dart';

class FirstRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff37394D),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 38, right: 38),
          child: Column(
            children: [
              Image.asset(
                'assets/pizza.png',
                width: 200,
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                'Pizza Balado',
                style: foodTextStyle,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                '\$90.00',
                style: priceTextStyle,
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Was it delicious ?',
                    style: questionTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/btnangry.png',
                        width: 60,
                      ),
                      Image.asset(
                        'assets/btnaverage.png',
                        width: 60,
                      ),
                      Image.asset(
                        'assets/btngood.png',
                        width: 60,
                      ),
                      Image.asset(
                        'assets/btnvery_good.png',
                        width: 60,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                width: 210,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xff34D186),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Align(
                  child: Text(
                    'Rate Now',
                    style: rateTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
