import 'package:raizes_do_saber/design_course/design_course_app_theme.dart';
import 'package:raizes_do_saber/design_course/filtros.dart';
import 'package:raizes_do_saber/design_course/perfil.dart';
import 'package:raizes_do_saber/design_course/questions.dart';
import 'package:raizes_do_saber/design_course/slides.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AtividadeFinalizado extends StatefulWidget {
  @override
  _AtividadeFinalizadoState createState() => _AtividadeFinalizadoState();
}

class _AtividadeFinalizadoState extends State<AtividadeFinalizado> {
  List<QuestionModel> myQuestions = new List<QuestionModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myQuestions = getQuestions();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xff3C8CE7), const Color(0xff00EAFF)])),
      child: Scaffold(
        backgroundColor: DesignCourseAppTheme.nearlyWhite,
        body: Stack(
          children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                  ),
                  Column(
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: new LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width * 0.9,
                            animation: true,
                            lineHeight: 20.0,
                            animationDuration: 2000,
                            percent: 1,
                            center: Text('100%'),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: DesignCourseAppTheme.nearlyGreen,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'PARABÉNS!! ATIVIDADE FINALIZADA COM SUCESSO, VOCÊ GANHOU 50 PONTOS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            letterSpacing: 0.27,
                            color: DesignCourseAppTheme.darkerText,
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset('assets/tesouro.png'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.white24,
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute<dynamic>(
                                    builder: (BuildContext context) =>
                                        PerfilScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 50, right: 50, top: 20),
                                height: 48,
                                decoration: BoxDecoration(
                                  color: DesignCourseAppTheme.nearlyGreen,
                                ),
                                child: Center(
                                  child: Text(
                                    'Ver perfil',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      letterSpacing: 0.0,
                                      color: DesignCourseAppTheme.nearlyWhite,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: SizedBox(
                width: AppBar().preferredSize.height,
                height: AppBar().preferredSize.height,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(AppBar().preferredSize.height),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: DesignCourseAppTheme.nearlyBlack,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
