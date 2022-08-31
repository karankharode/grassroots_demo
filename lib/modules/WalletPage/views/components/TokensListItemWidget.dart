// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grassroots_demo/modules/WalletPage/models/TokensModel.dart';

import '../../../../utils/colorUtil.dart';

class TokenListItemWidget extends StatelessWidget {
  const TokenListItemWidget({
    Key? key,
    required ColorUtil colorUtil,
    required this.token,
    required this.size,
  })  : _colorUtil = colorUtil,
        super(key: key);

  final ColorUtil _colorUtil;
  final Tokens token;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
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
              colors: [
                _colorUtil.kWhite,
                _colorUtil.kWhite,
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: _colorUtil.kWhite,
                      child: Image.asset(
                        token.image,
                        height: 45,
                        width: 45,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: _colorUtil.kWhite,
                        child: Icon(
                          token.active ? Icons.check : Icons.exit_to_app_outlined,
                          color: _colorUtil.kPrimaryColor,
                          size: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Text(
                      token.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: _colorUtil.kSecondaryTextColor,
                      ),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: token.subtitle.split('.').first, // default text style
                      children: <TextSpan>[
                        TextSpan(
                            text: ".${token.subtitle.split('.').last}",
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
