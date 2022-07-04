import 'package:flutter/material.dart';
import 'package:qr_code/qr_generator.dart';
import 'package:qr_code/qr_scanner.dart';
class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  var index=0;
  final screens = [
    QR_Scanner(),
    QR_Generator(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            height: 60,
            indicatorColor: Colors.blueGrey.shade300,
            backgroundColor: Colors.blueGrey.shade700,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          child :NavigationBar(
            animationDuration: const Duration(milliseconds: 1000),
            labelBehavior : NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex: index,
            onDestinationSelected: (index) {
              setState(() {
                this.index = index;
              });
            },
            destinations: const [
              NavigationDestination(
                  icon:Icon(Icons.qr_code_scanner),
                  selectedIcon: Icon(Icons.qr_code_scanner_outlined),
                  label: "Scanner"),
              NavigationDestination(
                  icon:Icon(Icons.qr_code_2),
                  selectedIcon: Icon(Icons.qr_code_2_outlined),
                  label: "Generator")
            ],
          ),
        )
    );
  }
}
