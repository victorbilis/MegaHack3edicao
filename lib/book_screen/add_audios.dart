import 'package:best_flutter_ui_templates/book_screen/book_screen.dart';
import 'package:best_flutter_ui_templates/book_screen/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_turn/page_turn.dart';
import 'package:video_player/video_player.dart';

class AddAudioScreen extends StatefulWidget {
  @override
  _AddAudioScreenState createState() => _AddAudioScreenState();
}

class _AddAudioScreenState extends State<AddAudioScreen>
    with TickerProviderStateMixin {
  List<AnimationController> _animationController = new List();
  List<VideoPlayerController> _controller = new List();
  int index = 0;
  List<bool> selecteds =
      new List.from([false, false, false, false, false, false]);
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  }

  void playAudio(String audio, int index) {
    setState(() {
      selecteds[index] = true;
    });
    _animationController.add(
        new AnimationController(vsync: this, duration: Duration(seconds: 1)));
    _animationController[_animationController.length - 1].repeat();

    Future.delayed(Duration.zero, () async {
      _controller.add(VideoPlayerController.asset(audio));
      await _controller[_controller.length - 1].initialize();
      _controller[_controller.length - 1].play();
    });

    Future.delayed(Duration(seconds: 2), () {
      _controller[_controller.length - 1].pause();
      setState(() {
        selecteds[index] = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                // color: Colors.blue,
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 100,
                margin: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          SoundListItem(
                            assetImage: 'assets/elephant_icon.png',
                            icon: Icons.hearing,
                            nome: 'ELEFANTE',
                            selected: selecteds[0],
                            onPressed: () {
                              playAudio('assets/audios/elefante.mp3', 0);
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SoundListItem(
                            assetImage: 'assets/lion_icon.png',
                            icon: Icons.hearing,
                            nome: 'LEÃO',
                            selected: selecteds[1],
                            onPressed: () {
                              playAudio('assets/audios/leao.mp3', 1);
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SoundListItem(
                            assetImage: 'assets/frog_icon.png',
                            icon: Icons.hearing,
                            selected: selecteds[2],
                            nome: 'SAPO',
                            onPressed: () {
                              playAudio('assets/audios/vaca.mp3', 2);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 2,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          SoundListItem(
                            assetImage: 'assets/bear_icon.png',
                            icon: Icons.hearing,
                            nome: 'URSO',
                            selected: selecteds[3],
                            onPressed: () {
                              playAudio('assets/audios/porco.mp3', 3);
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SoundListItem(
                            assetImage: 'assets/tiger_icon.png',
                            icon: Icons.hearing,
                            nome: 'TIGRE',
                            selected: selecteds[4],
                            onPressed: () {
                              playAudio('assets/audios/tigre.mp3', 4);
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SoundListItem(
                            assetImage: 'assets/image 23.png',
                            icon: Icons.hearing,
                            selected: selecteds[5],
                            nome: 'GUEPARDO',
                            onPressed: () {
                              playAudio('assets/audios/vaca.mp3', 5);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 50,
              child: Center(
                child: Text('ADICIONE UM NOVO ÁUDIO'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                color: Color(0XFF55C9C8),
                onPressed: () {},
                child: Text(
                  'ADICIONAR',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}

class SoundListItem extends StatelessWidget {
  String assetImage;
  String nome;
  IconData icon;
  bool selected;
  var onPressed;

  SoundListItem(
      {this.assetImage, this.nome, this.icon, this.onPressed, this.selected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: selected ? Colors.blueAccent : Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Color(0xFF55C9C8))),
        child: Padding(
          padding: const EdgeInsets.only(left: 38.0, right: 38.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetImage),
              Text(
                nome,
                style: TextStyle(color: selected ? Colors.white : Colors.black),
              ),
              Icon(icon, color: selected ? Colors.white : Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
