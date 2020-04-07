import 'package:flutter/material.dart';
import 'package:fluttersrcintro/resource/colors/colors.dart';
import 'package:fluttersrcintro/resource/string/strings.dart';
import 'package:fluttersrcintro/screen/first_page.dart';
import 'package:fluttersrcintro/widget/circular_progresser_bar.dart';

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
              style: textTheme.display1
                  .copyWith(color: AppColors.primaryTextColor),
            ),
          ),
          Text(
            Strings.welcomeApp,
            style:
                textTheme.display1.copyWith(color: AppColors.primaryTextColor),
          ),
          SizedBox(
            height: 40,
          ),
          FlatButton(
            color: AppColors.primaryButtonColor,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstPage(value: .33,)));
            },
            child: Text(
              'Back To First Page',
              style: textTheme.title.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
