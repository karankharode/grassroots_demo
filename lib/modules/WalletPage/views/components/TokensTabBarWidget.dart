// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/colorUtil.dart';
import '../../../../utils/config.dart';
import 'TokensListItemWidget.dart';

class TokensTabBarWidget extends StatelessWidget {
  const TokensTabBarWidget({
    Key? key,
    required ColorUtil colorUtil,
    required this.size,
  })  : _colorUtil = colorUtil,
        super(key: key);

  final ColorUtil _colorUtil;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 18.0,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: Column(
            children: [
              // search bar
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          fillColor: _colorUtil.kSearchFillCOlor,
                          filled: true,
                          contentPadding: EdgeInsets.zero,
                          hintStyle: TextStyle(
                            color: _colorUtil.kSecondaryTextColor,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: _colorUtil.kSecondaryTextColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                              color: _colorUtil.kSearchFillCOlor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                              color: _colorUtil.kSearchFillCOlor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 4, 16, 4),
                    child:
                        Icon(FontAwesomeIcons.arrowsUpDown, color: _colorUtil.kSecondaryTextColor),
                  ),
                ],
              ),

              // list view
              ListView.builder(
                itemCount: tokensList.length,
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                itemBuilder: (BuildContext context, int index) {
                  return TokenListItemWidget(
                      colorUtil: _colorUtil, token: tokensList[index], size: size);
                },
              ),

              // expanded view
              Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: Text('Hidden Tokens (2)',
                      style: TextStyle(color: _colorUtil.kSecondaryTextColor)),
                  backgroundColor: _colorUtil.kBackgroundColor,
                  collapsedBackgroundColor: _colorUtil.kBackgroundColor,
                  children: [
                    Text('Hidden Tokens Revealed',
                        style: TextStyle(color: _colorUtil.kSecondaryTextColor)),
                  ],
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: Text('Suspicious Tokens (15)',
                      style: TextStyle(color: _colorUtil.kSecondaryTextColor)),
                  children: [
                    Text('Suspicious Tokens Revealed',
                        style: TextStyle(color: _colorUtil.kSecondaryTextColor)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
