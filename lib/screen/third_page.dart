import 'package:flutter/material.dart';
import 'package:fluttersrcintro/resource/colors/colors.dart';
import 'package:fluttersrcintro/resource/string/strings.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: AppColors.backIconBackgroundColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.primaryTextColor,
                        size: 15,
                      ),
                    ),
                  ),
                  Text(Strings.skipBtn,
                      style: textTheme.title.copyWith(
                          color: AppColors.primaryTextColor, fontSize: 22)),
                ],
              ),
              Stack(
                children: <Widget>[
                  Image.asset('assets/images/back3.png',width: 280,),
                  Image.asset('assets/images/h3.png',width: 280,),
                ],
              ),
              Text(
                Strings.thirdTitle,
                textAlign: TextAlign.center,
                style: textTheme.display1.copyWith(
                    color: AppColors.primaryTextColor,
                    fontSize: 30
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryButtonColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
