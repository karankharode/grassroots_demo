// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grassroots_demo/modules/WalletPage/views/components/LeasingTabBarWidget.dart';
import 'package:grassroots_demo/modules/WalletPage/views/components/OptionsContainerWidget.dart';
import 'package:grassroots_demo/modules/WalletPage/views/components/TokensTabBarWidget.dart';
import 'package:grassroots_demo/utils/colorUtil.dart';
import '../../../utils/config.dart';

// ignore: must_be_immutable
class WalletPageView extends StatelessWidget {
  WalletPageView({super.key});
  late Size size;

  final ColorUtil _colorUtil = ColorUtil();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(

        // appbar containing profile image
        appBar: AppBar(
          elevation: 0,
          backgroundColor: _colorUtil.kBackgroundColor,
          leading: IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: _colorUtil.kPrimaryTextColor,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              onPressed: () {},
            ),
          ],
        ),

        // body section with tokens and leasing tabbar view
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // heading
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 4, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wallet',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          color: _colorUtil.kSecondaryTextColor,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Mobile Team',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: _colorUtil.kPrimaryTextColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                            child: Icon(
                              Icons.expand,
                              color: _colorUtil.kSecondaryTextColor,
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // top containers with options
                SizedBox(
                  width: size.width,
                  height: size.width * 0.3,
                  child: ListView.builder(
                    itemCount: optionsList.length,
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return OptionsContainerWidget(
                          colorUtil: _colorUtil, option: optionsList[index], size: size);
                    },
                  ),
                ),

                // tab bar view
                SizedBox(
                  width: size.width,
                  height: size.height * 0.6,
                  child: DefaultTabController(
                      length: 2, // length of tabs
                      initialIndex: 0,
                      child:
                          Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                        // tabs
                        TabBar(
                          labelColor: _colorUtil.kPrimaryTextColor,
                          unselectedLabelColor: _colorUtil.kSecondaryTextColor,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: _colorUtil.kPrimaryColor,
                          isScrollable: true,
                          indicatorPadding: const EdgeInsets.only(right: 20),
                          tabs: const [
                            Tab(text: 'Tokens'),
                            Tab(text: 'Leasing'),
                          ],
                        ),

                        // tab bar view for each tab
                        Expanded(
                            child: TabBarView(children: <Widget>[
                          // tokens Tab - Tab 1
                          TokensTabBarWidget(colorUtil: _colorUtil, size: size),

                          // Leases Tab -  Tab 2
                          LeasingTabBarWidget(size: size, colorUtil: _colorUtil)
                        ]))
                      ])),
                ),
              ],
            ),
          ),
        ));
  }
}
