import 'package:best_flutter_ui_templates/book_screen/add_audios.dart';
import 'package:best_flutter_ui_templates/book_screen/finished_screen.dart';
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
  bool addAudio = false;

  void closeAddAudio() {
    setState(() {
      addAudio = false;
    });
  }

  void openAddAudio() {
    setState(() {
      addAudio = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width - 80,
              height: MediaQuery.of(context).size.height,
              child: PageTurn(
                key: _controller,
                backgroundColor: Colors.white,
                showDragCutoff: false,
                // duration: Duration(seconds: 1),
                lastPage: FinishedScreen(),
                children: <Widget>[
                  for (var i = 0; i < 5; i++) BookPage(page: i),
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
                          onPressed: openAddAudio,
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
            ),
            addAudio ? AddAudioScreen() : SizedBox(),
            addAudio
                ? Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        onPressed: () {
                          print('close');
                          closeAddAudio();
                        },
                        color: Color(0XFFFBAEA8),
                        child: Image.asset('assets/close_icon.png'),
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.search),
        //   onPressed: () {
        //     _controller.currentState.goToPage(2);
        //   },
        // ),
      ),
    );
  }
}

class RightButtonCircle extends StatelessWidget {
  String img;
  var onPressed;
  bool selected;
  RightButtonCircle({this.img, this.onPressed, this.selected});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: DesignCourseAppTheme.nearlyGreen, width: 1),
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Image.asset(img),
      ),
    );
  }
}
