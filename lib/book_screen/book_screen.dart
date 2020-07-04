import 'package:best_flutter_ui_templates/book_screen/page.dart';
import 'package:flutter/material.dart';
import 'package:page_turn/page_turn.dart';

import '../design_course/design_course_app_theme.dart';

class BookScreen extends StatefulWidget {
  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  final _controller = GlobalKey<PageTurnState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - 80,
            height: MediaQuery.of(context).size.height,
            child: PageTurn(
              key: _controller,
              backgroundColor: Colors.white,
              showDragCutoff: false,
              duration: Duration(seconds: 1),
              lastPage: Container(child: Center(child: Text('Last Page!'))),
              children: <Widget>[
                for (var i = 0; i < 20; i++)
                  SingleChildScrollView(child: BookPage(page: i)),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 90,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    left: BorderSide(color: Color(0XFFDEDEDE), width: 1)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/record_icon.png'),
                      SizedBox(
                        height: 20,
                      ),
                      RightButtonCircle(
                        img: 'assets/duck_icon.png',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RightButtonCircle(
                        img: 'assets/river_icon.png',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RightButtonCircle(
                        img: 'assets/add_icon.png',
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      MaterialButton(
                        onPressed: () {
                          _controller.currentState.previousPage();
                        },
                        color: Color(0XFFFCF4AB),
                        child: Image.asset('assets/back_icon.png'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      MaterialButton(
                        onPressed: () {
                          _controller.currentState.nextPage();
                        },
                        color: Color(0XFFACE1CF),
                        child: Image.asset('assets/next_icon.png'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Color(0XFFFBAEA8),
                child: Image.asset('assets/close_icon.png'),
              ),
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.search),
      //   onPressed: () {
      //     _controller.currentState.goToPage(2);
      //   },
      // ),
    );
  }
}

class RightButtonCircle extends StatelessWidget {
  String img;

  RightButtonCircle({this.img});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: DesignCourseAppTheme.nearlyGreen, width: 1),
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Image.asset(img),
    );
  }
}
