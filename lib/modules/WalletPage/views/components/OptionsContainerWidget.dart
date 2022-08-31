// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grassroots_demo/modules/WalletPage/models/OptionsModel.dart';

import '../../../../utils/colorUtil.dart';

class OptionsContainerWidget extends StatelessWidget {
  const OptionsContainerWidget({
    Key? key,
    required ColorUtil colorUtil,
    required this.option,
    required this.size,
  })  : _colorUtil = colorUtil,
        super(key: key);

  final ColorUtil _colorUtil;
  final Options option;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(4),
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
          // margin: const EdgeInsets.fromLTRB(10, 20, 20, 20),
          width: size.width / 2.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: option.active
                  ? [
                      _colorUtil.kBoxGradient2,
                      _colorUtil.kBoxGradient2,
                      _colorUtil.kBoxGradient1,
                    ]
                  : [
                      _colorUtil.kWhite,
                      _colorUtil.kWhite,
                    ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    option.icon,
                    color:
                        option.active ? _colorUtil.navBarBgColor : _colorUtil.kPrimaryTextColor,
                    size: 22,
                  ),
                ],
              ),
              Text(
                option.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: option.active
                      ? _colorUtil.kSecondaryTextColorWhite
                      : _colorUtil.kSecondaryTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
