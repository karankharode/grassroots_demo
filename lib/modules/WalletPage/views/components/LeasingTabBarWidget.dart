// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../utils/colorUtil.dart';

class LeasingTabBarWidget extends StatelessWidget {
  const LeasingTabBarWidget({
    Key? key,
    required this.size,
    required ColorUtil colorUtil,
  })  : _colorUtil = colorUtil,
        super(key: key);

  final Size size;
  final ColorUtil _colorUtil;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 18.0,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: Column(children: [
            // progress bar container
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(4),
                child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: _colorUtil.kWhite,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // text available balance
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text('Available Balance',
                                  style: TextStyle(
                                    color: _colorUtil.kSecondaryTextColor,
                                    fontSize: 14,
                                  )),
                            ),

                            // text balance
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text.rich(
                                TextSpan(
                                  text: "105", // default text style
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ".405",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: _colorUtil.kPrimaryTextColor.withOpacity(0.7),
                                        )),
                                  ],
                                ),
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: _colorUtil.kPrimaryTextColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: LinearProgressIndicator(
                              value: 0.7,
                              backgroundColor: _colorUtil.kSecondaryTextColorWhite,
                              minHeight: 8,
                              valueColor: AlwaysStoppedAnimation<Color>(_colorUtil.kPrimaryColor),
                            ),
                          ),
                        ),

                        // leased and total distribution
                        Column(
                          children: [
                            // leased
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1 043.55",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: _colorUtil.kPrimaryTextColor,
                                    ),
                                  ),

                                  // text leased
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('Leased',
                                          style: TextStyle(
                                            color: _colorUtil.kSecondaryTextColor,
                                            fontSize: 14,
                                          )),
                                      // blue dot
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Container(
                                          width: 8,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: _colorUtil.kPrimaryColor,
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // text leased
                                ],
                              ),
                            ),

                            // divider
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Divider(
                                color: _colorUtil.kSecondaryTextColor,
                              ),
                            ),

                            // total
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1 540.99",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: _colorUtil.kPrimaryTextColor,
                                    ),
                                  ),

                                  // text total
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('Total',
                                          style: TextStyle(
                                            color: _colorUtil.kSecondaryTextColor,
                                            fontSize: 14,
                                          )),
                                      // grey dot
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Container(
                                          width: 8,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: _colorUtil.kSecondaryTextColorWhite,
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // text leased
                                ],
                              ),
                            ),
                            // divider
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Divider(
                                color: _colorUtil.kSecondaryTextColor,
                              ),
                            ),

                            // text button
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Container(
                                width: double.infinity,
                                // background color
                                decoration: BoxDecoration(
                                  color: _colorUtil.kPrimaryColor.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  // background color

                                  child: Text(
                                    'Start Lease',
                                    style: TextStyle(
                                      color: _colorUtil.kPrimaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ), // view detail arrow container

            // view history arrow
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: _colorUtil.kWhite,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'View History',
                          style: TextStyle(
                            color: _colorUtil.kPrimaryTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        // arrow
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: _colorUtil.kPrimaryTextColor,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),

            // expansiontile widget
            // expanded view
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: Text('Active Now (2)',
                      style: TextStyle(color: _colorUtil.kSecondaryTextColor)),
                  backgroundColor: _colorUtil.kBackgroundColor,
                  collapsedBackgroundColor: _colorUtil.kBackgroundColor,
                  children: [
                    Text('Active Tokens Shown',
                        style: TextStyle(color: _colorUtil.kSecondaryTextColor)),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
