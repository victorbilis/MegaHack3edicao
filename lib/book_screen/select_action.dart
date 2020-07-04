import 'package:best_flutter_ui_templates/book_screen/book_screen.dart';
import 'package:best_flutter_ui_templates/book_screen/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_turn/page_turn.dart';

class SelectAtionScreen extends StatefulWidget {
  @override
  _SelectAtionScreenState createState() => _SelectAtionScreenState();
}

class _SelectAtionScreenState extends State<SelectAtionScreen> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/select_action_effect.png'))),
        ),
        Container(
          width: double.maxFinite,
          height: 50,
          margin: EdgeInsets.only(top: 10),
          child: Center(
            child: Text(
              '4 patos e uma pata',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
              width: 100,
              height: 50,
              margin: EdgeInsets.only(top: 10),
              child: Image.asset('assets/duck_select_action.png')),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0XFFFCF4AB), shape: BoxShape.circle),
              margin: EdgeInsets.only(bottom: 10),
              child: Image.asset('assets/share_icon.png')),
        ),
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Center(
                child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFE5E5E5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/continuar_select_action.png',
                          width: 50,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(child: Text('CONTINUAR'))
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BookScreen()));
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0XFF55C9C8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/comecar_select_action.png',
                            width: 50,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(child: Text('COMEÇAR'))
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFE5E5E5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/atividade_select_action.png',
                          width: 50,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(child: Text('ATIVIDADE'))
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ),
        )
      ],
    ));
  }
}
