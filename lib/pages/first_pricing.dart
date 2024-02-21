import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPricing extends StatefulWidget {
  @override
  State<FirstPricing> createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/crown.png',
                width: 100,
              ),
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              'Which one you wish \nto Upgrade?',
              style: GoogleFonts.poppins(
                color: Color(0xff191919),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget option(
      int? index,
      String ImageUrl,
      String title,
      String description,
      String subDescription,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index!;
          });
        },
        child: Container(
          width: 316,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
                color: selectedIndex == index
                    ? Color(0xff6050E7)
                    : Color(0xffD9DEEA)),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                ImageUrl,
                height: 66,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                  left: 7,
                  right: 7,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        color: Color(0xff191919),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 16,
                        bottom: 22,
                      ),
                      child: Row(
                        children: [
                          Text(
                            description,
                            style: GoogleFonts.poppins(
                              color: Color(0xffA3A8B8),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            subDescription,
                            style: GoogleFonts.poppins(
                              color: Color(0xff5343C2),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 10),
                child: selectedIndex == index
                    ? Image.asset(
                        'assets/check_button.png',
                        width: 26,
                      )
                    : SizedBox(),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          header(),
          SizedBox(height: 50),
          option(
            0,
            'assets/pig_icon.png',
            'Money Security',
            'support',
            '24/7',
          ),
          SizedBox(
            height: 24,
          ),
          option(
            1,
            'assets/paper_icon.png',
            'Automation',
            'we provide',
            'Invoice',
          ),
          SizedBox(
            height: 24,
          ),
          option(
            2,
            'assets/dollar_icon.png',
            'Balance Report',
            'can up to',
            '10k',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff6050E7),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 30,
              ),
              child: Text('Upgrade Now',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 60,
              ),
              child: Image.asset(
                'assets/arrow_right.png',
                width: 24,
              ),
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
