import 'package:best_flutter_ui_templates/design_course/inicioAtividade.dart';
import 'package:flutter/material.dart';

class FinishedScreen extends StatelessWidget {
  final int page;

  const FinishedScreen({Key key, this.page}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/select_action_effect.png'))),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/fireworks.png'),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/duck.png'),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'PARABÉNS AMIGUINHO VOCÊ TERMINOU O MEU LIVRINHO',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'VAMOS COMPARTILHAR COM OS NOSSOS AMIGUINHOS??',
                        style: TextStyle(fontSize: 12),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Wrap(
                          children: <Widget>[
                            Container(
                              width: 200,
                              height: 40,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.share),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('COMPARTILHAR')
                                  ],
                                ),
                                color: Color(0XFF55C9C8),
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 40,
                              margin: EdgeInsets.only(left: 10),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute<dynamic>(
                                      builder: (BuildContext context) =>
                                          InicioAtividade(),
                                    ),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset('assets/book_icon.png'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('ATIVIDADE')
                                  ],
                                ),
                                color: Color(0XFFACE1CF),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: Container(
                        width: 200,
                        height: 40,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/person_reading_icon.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text('LER MAIS LIVROS')
                            ],
                          ),
                          color: Color(0XFFFCF4AB),
                        ),
                      ))
                    ],
                  ),
                ),
              )
            ],
          )),
    );
    // return DefaultTextStyle.merge(
    //   style: TextStyle(fontSize: 16.0),
    //   child: SafeArea(
    //     bottom: false,
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
    //       child: SingleChildScrollView(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.stretch,
    //           children: <Widget>[
    //             Text(
    //               "CHAPTER $page",
    //               style: TextStyle(
    //                 fontSize: 32.0,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //             Text(
    //               "Down the Rabbit-Hole",
    //               style: TextStyle(
    //                 fontSize: 24.0,
    //                 fontWeight: FontWeight.w500,
    //               ),
    //               textAlign: TextAlign.center,
    //             ),
    //             const SizedBox(height: 32.0),
    //             Row(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: <Widget>[
    //                 Expanded(
    //                   child: Text(
    //                       "Alice was beginning to get very tired of sitting by her sister on the bank, and of"
    //                       " having nothing to do: once or twice she had peeped into the book her sister was "
    //                       "reading, but it had no pictures or conversations in it, `and what is the use of "
    //                       "a book,' thought Alice `without pictures or conversation?'"),
    //                 ),
    //                 Container(
    //                   margin: const EdgeInsets.only(left: 12.0),
    //                   color: Colors.black26,
    //                   width: 160.0,
    //                   height: 220.0,
    //                   child: Placeholder(),
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(height: 16.0),
    //             Text(
    //               "So she was considering in her own mind (as well as she could, for the hot day made her "
    //               "feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be "
    //               "worth the trouble of getting up and picking the daisies, when suddenly a White "
    //               "Rabbit with pink eyes ran close by her.\n"
    //               "\n"
    //               "There was nothing so very remarkable in that; nor did Alice think it so very much out "
    //               "of the way to hear the Rabbit say to itself, `Oh dear! Oh dear! I shall be "
    //               "late!' (when she thought it over afterwards, it occurred to her that she ought to "
    //               "have wondered at this, but at the time it all seemed quite natural); but when the "
    //               "Rabbit actually took a watch out of its waistcoat-pocket, and looked at it, and then "
    //               "hurried on, Alice started to her feet, for it flashed across her mind that she had "
    //               "never before seen a rabbit with either a waistcoat-pocket, or a watch to take out "
    //               "of it, and burning with curiosity, she ran across the field after it, and fortunately "
    //               "was just in time to see it pop down a large rabbit-hole under the hedge.",
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
