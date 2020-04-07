import 'package:flutter/material.dart';
import 'package:fluttersrcintro/resource/colors/colors.dart';
import 'package:fluttersrcintro/resource/string/strings.dart';
import 'package:fluttersrcintro/screen/final_page.dart';
import 'package:fluttersrcintro/screen/third_page.dart';
import 'package:fluttersrcintro/widget/circular_progresser_bar.dart';

class SecondPage extends StatefulWidget {
  final double value;

  const SecondPage({Key key,@required this.value}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var nextValue;
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
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
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FinalPage()));
                    },
                    child: Text(Strings.skipBtn,
                        style: textTheme.title.copyWith(
                            color: AppColors.primaryTextColor, fontSize: 22)),
                  ),
                ],
              ),
              Text(
                Strings.secondTitle,
                textAlign: TextAlign.center,
                style: textTheme.display1
                    .copyWith(color: AppColors.primaryTextColor, fontSize: 30),
              ),
              Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/images/back2.png',
                    width: 280,
                  ),
                  Image.asset(
                    'assets/images/h2.png',
                    width: 280,
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: 70,
                    child: CircleProgressBar(
                      foregroundColor: AppColors.primaryIndicatorColor,
                      value: widget.value,
                      animationDuration: Duration(milliseconds: 1000),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        nextValue = 1.0;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdPage(value: nextValue,),
                        ),
                      );
                    },
                    child: Container(
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
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
