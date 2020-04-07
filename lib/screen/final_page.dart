import 'package:flutter/material.dart';
import 'package:fluttersrcintro/resource/colors/colors.dart';
import 'package:fluttersrcintro/resource/string/strings.dart';

class FinalPage extends StatefulWidget {
  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              Strings.finalTitle,
              style:
                  textTheme.display1.copyWith(color: AppColors.primaryTextColor),
            ),
          ),
          Text(
            Strings.welcomeApp,
            style:
                textTheme.display1.copyWith(color: AppColors.primaryTextColor),
          ),
        ],
      ),
    );
  }
}
