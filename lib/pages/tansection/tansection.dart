import 'dart:ui_web';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobiledesign/DateMonth.dart';
import 'package:mobiledesign/Dropdown.dart';

const List<String> list = <String>['Monthly', 'Two', 'Three', 'Four'];

class TanSection extends StatelessWidget {
  const TanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: const Column(
          children: [
            BalanceCard(),
            // ExpenseScreen(
            //   date: "Monday, 22 August",
            //   amount: "₹ 2,400.00",
            // ),
            Expanded(child: MyTable()),
            // footer(),
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
                  Navigator.pushNamed(context, "/tansection");
                  // Handle navigation to Home
                },
              ),
              IconButton(
                icon: Image.asset("assets/images/bar-chart 1-hover.png"),
                onPressed: () {
                  Navigator.pushNamed(context, "/status");
                  // Handle navigation to Analytics
                },
              ),
              const SizedBox(width: 40), // The middle space for the FAB
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
        floatingActionButton: Container(
          width: 75.0,
          height: 75.0,
          child: RawMaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, "/status");
            },
            shape: CircleBorder(),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 35,
            ),
          ),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [Color(0xFFAA56B9), Color(0xFF7433E5)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: const BoxDecoration(color: Color(0xFF7B7EEC)),
      child: const Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [Datemonth()],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Income",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    "₹80,000",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Expenses",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    "₹25,000",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Balance",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    "₹55,000",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

// class DropdownMenuExample extends StatefulWidget {
//   const DropdownMenuExample({super.key});

//   @override
//   State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
// }

// class _DropdownMenuExampleState extends State<DropdownMenuExample> {
//   String dropdownValue = list.first;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
//       color: Colors.white,
//       child: DropdownButton<String>(
//         borderRadius: BorderRadius.circular(10),
//         value: dropdownValue,
//         icon: const Icon(
//           Icons.keyboard_arrow_down_rounded,
//           color: Colors.black,
//         ),
//         iconSize: 24, // Adjust the icon size if needed
//         elevation: 16,
//         dropdownColor: Colors.white,
//         style: const TextStyle(
//             color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
//         underline: Container(
//           height: 2,
//           color: Colors.transparent,
//         ),
//         onChanged: (String? value) {
//           setState(() {
//             dropdownValue = value!;
//           });
//         },
//         items: list.map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(
//                   10, 0, 10, 0), // Adjust the vertical padding as needed
//               child: Text(value),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// .....table starting from here..... //

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildDaySection(
          context,
          'Monday, 22 August',
          '₹ 2,400.00',
          [
            buildTableRow('Fruits', 'Fruits', 'Cash', '₹ 450.00'),
            buildTableRow(
                'Online\nShopping', 'Pillow With Cover', 'Cash', '₹ 1950.00'),
          ],
        ),
        // SizedBox(height: 16),
        buildDaySection(
          context,
          'Monday, 12 August',
          '₹ 850.00',
          [
            buildTableRow('Online Shopping', 'Chair cover', 'Cash', '₹ 400.00'),
            buildTableRow('Fruits', 'Fruits', 'Cash', '₹  450.00'),
          ],
        ),
        buildDaySection(
          context,
          'Monday, 12 August',
          '₹ 850.00',
          [
            buildTableRow('Online Shopping', 'Chair cover', 'Cash', '₹ 400.00'),
            buildTableRow('Fruits', 'Fruits', 'Cash', '₹  450.00'),
          ],
        ),
        buildDaySection(
          context,
          'Monday, 12 August',
          '₹ 850.00',
          [
            buildTableRow('Online Shopping', 'Chair cover', 'Cash', '₹ 400.00'),
            buildTableRow('Fruits', 'Fruits', 'Cash', '₹  450.00'),
          ],
        ),
      ],
    );
  }

  Widget buildDaySection(
      BuildContext context, String date, String total, List<TableRow> rows) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                total,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.red),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Divider(),
        ),
        Table(
          columnWidths: {
            0: FixedColumnWidth(150),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(100),
          },
          // border: TableBorder(
          //   horizontalInside: BorderSide(width: 1, color: Colors.grey[300]!),
          // ),
          children: rows,
        ),
      ],
    );
  }

  TableRow buildTableRow(
      String title, String subtitle, String paymentMethod, String amount) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                paymentMethod,
                style: const TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            amount,
            style: const TextStyle(
                color: Colors.red, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}





