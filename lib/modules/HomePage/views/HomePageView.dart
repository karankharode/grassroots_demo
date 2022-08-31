// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grassroots_demo/modules/WalletPage/views/WalletPageView.dart';
import 'package:grassroots_demo/utils/colorUtil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ColorUtil _colorUtil = ColorUtil();

  int _currentIndex = 0;

  final List bodyList = [
    WalletPageView(),
    WalletPageView(),
    WalletPageView(),
    WalletPageView(),
    WalletPageView(),
  ];

  showBottomSheet() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        isScrollControlled: true,
        builder: (builder) {
          double mWidth = MediaQuery.of(context).size.width;
          double mHeight = MediaQuery.of(context).size.height;
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: StatefulBuilder(
              builder: (context, StateSetter setChooseCategoryState) => Container(
                width: mWidth,
                height: mHeight * 0.80,
                decoration: BoxDecoration(
                    color: _colorUtil.kPrimaryColor.withOpacity(0.95),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0))),
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 4,
                        width: 52,
                        padding: const EdgeInsets.fromLTRB(4, 10, 4, 20),
                        decoration:  const BoxDecoration(
                            color: Colors.grey,
                            borderRadius:  BorderRadius.all(
                               Radius.circular(10.0),
                            )),
                      ),
                    ),

                    // high five image
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Image.asset(
                          'assets/images/highfive.png',
                          color: Colors.white,
                          height: 50,
                          width: mWidth,
                        ),
                      ),
                    ),

                    // hello title
                    const Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 6),
                      child: Center(
                        child: Text(
                          'Hello!',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    // address subtitle
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Center(
                        child: Text(
                          '0xffdfrn5rt8gvyedfetf54eftyyf54d87632ghy',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // copy button with icon
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0, right: 16),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                              decoration: BoxDecoration(
                                  color: Colors.black87.withOpacity(0.4),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(6.0),
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.copy,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '    Copy',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // share button with icon
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0, right: 16),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                              decoration: BoxDecoration(
                                  color: Colors.black87.withOpacity(0.4),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(6.0),
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.share,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '   Share ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // qr code image
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Center(
                        child: Image.asset(
                          'assets/images/qrcode.png',
                          height: mHeight * 0.31,
                          width: mWidth,
                        ),
                      ),
                    ),

                    // your qr code text
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Center(
                        child: Text(
                          'Your QR Code',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: _colorUtil.navBarBgColor,
        selectedItemColor: _colorUtil.kPrimaryTextColor,
        unselectedItemColor: _colorUtil.kSecondaryTextColor,
        type: BottomNavigationBarType.fixed,
        iconSize: 22,
        currentIndex: _currentIndex,
        onTap: (int index) {
          if (index == 2) {
            showBottomSheet();
          } else {
            if (index != _currentIndex) {
              setState(() {
                _currentIndex = index;
              });
            }
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.repeat),
            label: 'Repeat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.solidSquarePlus,
              color: Color.fromRGBO(144, 202, 249, 1),
            ),
            label: 'Plus',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bars),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gear),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
