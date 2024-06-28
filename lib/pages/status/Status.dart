import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobiledesign/Dropdown.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          backgroundColor: Colors.white,
          body: const Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 15,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Aug 2022",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black,
                          size: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        DropdownMenuExample(),
                      ],
                    )
                  ],
                ),
              ),
              tabsBar(),
              Expanded(child: TbabarViews()),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 5.0,
            color: Colors.white,
            shadowColor: Colors.black,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Image.asset("assets/images/home-f 1-hover.png"),
                  onPressed: () {
                    // Handle navigation to Home
                  },
                ),
                IconButton(
                  icon: Image.asset("assets/images/bar-chart 1-hover.png"),
                  onPressed: () {
                    // Handle navigation to Analytics
                  },
                ),
                // const SizedBox(width: 40), // The middle space for the FAB
                IconButton(
                  icon: Image.asset("assets/images/status-hover.png"),
                  onPressed: () {
                    // Handle navigation to Edit
                  },
                ),
                IconButton(
                  icon: Image.asset("assets/images/user-hover.png"),
                  onPressed: () {
                    // Handle navigation to Profile
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class tabsBar extends StatelessWidget {
  const tabsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Tab(
            child: Column(
              children: [
                Text(
                  "Income",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA19F9F)),
                ),
                Text(
                  "₹90,000",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffA19F9F),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Tab(
            child: Column(
              children: [
                Text(
                  "Expenses",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA19F9F)),
                ),
                Text(
                  "₹ 82,632.00",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffA19F9F),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TbabarViews extends StatelessWidget {
  const TbabarViews({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Image.asset("assets/images/datagraph.png"),
            ),
            const Divider(height: 1, color: Color(0xffE2E2F6)),
            const Expanded(child: StatusData())
          ],
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Image.asset("assets/images/datagraph-two.PNG",
                  height: 260, width: 335),
            ),
            const Divider(height: 1, color: Color(0xffE2E2F6)),
            const Expanded(
              child: SecondSlide(),
            )
          ],
        ),
      ],
    );
  }
}

// ** Modifying tables  **

class StatusData extends StatelessWidget {
  const StatusData({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildRow("58%", "Other's", "₹ 47,890.00", const Color(0xff989CF2)),
        buildRow("9.9%", "Diesel", "₹ 47,890.00", const Color(0xff9019B8)),
        buildRow("0.7%", "Vedik", "₹ 47,890.00", const Color(0xffCA2091)),
        buildRow(
            "0.2%", "Car Maintenance", "₹ 47,890.00", const Color(0xff6B14D1)),
      ],
    );
  }

  Widget buildRow(String percentage, String label, String amount, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE2E2F6), // Color of the border
            width: 1.0, // Thickness of the border
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: color.withOpacity(0.9),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
                child: Text(
                  percentage,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Text(
                amount,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondSlide extends StatelessWidget {
  const SecondSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildSecondRow("10%", "Vedik", "₹4,890.00", const Color(0xff6B14D1)),
        buildSecondRow(
            "6.0%", "Car Maintenance", "₹23,890.00", const Color(0xffCA2091)),
        buildSecondRow("13%", "Diesel", "₹40,890.00", const Color(0xff9019B8)),
        buildSecondRow("0.5%", "Other's", "₹7,890.00", const Color(0xff989CF2)),
      ],
    );
  }

  Widget buildSecondRow(
      String percentage, String label, String amount, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE2E2F6),
            width: 1.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: color.withOpacity(0.9),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
                child: Text(
                  percentage,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: Text(
              label,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            )),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Text(
                amount,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
