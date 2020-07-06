import 'package:best_flutter_ui_templates/book_screen/add_audios.dart';
import 'package:best_flutter_ui_templates/book_screen/finished_screen.dart';
import 'package:best_flutter_ui_templates/book_screen/page.dart';
import 'package:best_flutter_ui_templates/utils/api_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:page_turn/page_turn.dart';
import 'package:best_flutter_ui_templates/utils/globals.dart' as globals;
import 'package:video_player/video_player.dart';
import '../design_course/design_course_app_theme.dart';

class BookScreen extends StatefulWidget {
  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> with TickerProviderStateMixin {
  final _controller = GlobalKey<PageTurnState>();
  bool addAudio = false;
  AnimationController _animationController;
  VideoPlayerController _controllerAudio;
  bool playAudio = false;
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
  void initState() {
    super.initState();
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
                lastPage: Container(
                  width: MediaQuery.of(context).size.width - 80,
                  height: MediaQuery.of(context).size.height,
                  child: Center(
                    child: Image.network(globals.selected_book.imagePath),
                  ),
                ),
                children: <Widget>[
                  for (var i = 0; i < 5; i++)
                    BookPage(
                        img: globals.selected_book.pages[i]['img'],
                        content: globals.selected_book.pages[i]['text']),
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
                        GestureDetector(
                            onTap: () async {
                              if (playAudio) {
                                _controllerAudio.pause();
                                playAudio = false;
                              } else {
                                _animationController = new AnimationController(
                                    vsync: this,
                                    duration: Duration(seconds: 1));
                                _animationController.repeat();

                                Future.delayed(Duration(seconds: 1), () async {
                                  _controllerAudio =
                                      VideoPlayerController.asset(
                                          'assets/audios/audio_fundo.wav');
                                  await _controllerAudio.initialize();
                                  _controllerAudio.play();
                                });
                                playAudio = true;
                              }
                            },
                            child: Image.asset('assets/record_icon.png')),
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
                          height: 5,
                        ),
                        RightButtonCircle(
                          icon: Icon(
                            Icons.phone,
                            size: 20,
                          ),
                          onPressed: () async {
                            var response = await Dio().post(
                              'https://api2.totalvoice.com.br/chamada',
                              options: RequestOptions(headers: {
                                'Access-Token':
                                    'e73a5b17288667c2bf727924f29ecdd4'
                              }),
                              data: {
                                "numero_origem": "19998517324",
                                "numero_destino": "19991563732",
                              },
                            );
                            print(response);
//                             var response = await ApiHelper.postRequest(context, 'https://api2.totalvoice.com.br/chamada', {
//   "numero_origem": "19998517324",
//   "numero_destino": "19991563732"
// });
//                             curl -X POST --header
//                             'Content-Type: application/json'
//                              --header 'Accept: application/json'
//                              -d '{"numero_origem":"","numero_destino":"","data_criacao":"","gravar_audio":false,"bina_origem":"","bina_destino":"","tags":"","detecta_caixa_origem":false}'
                          },
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
  Icon icon;
  RightButtonCircle({this.img, this.onPressed, this.selected, this.icon});
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
        child: (icon != null) ? icon : Image.asset(img),
      ),
    );
  }
}
