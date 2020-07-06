import 'package:best_flutter_ui_templates/design_course/atividade_finalizado.dart';
import 'package:best_flutter_ui_templates/design_course/design_course_app_theme.dart';
import 'package:best_flutter_ui_templates/design_course/filtros.dart';
import 'package:best_flutter_ui_templates/design_course/questions.dart';
import 'package:best_flutter_ui_templates/design_course/slides.dart';
import 'package:best_flutter_ui_templates/utils/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:best_flutter_ui_templates/utils/globals.dart' as globals;

class Atividade extends StatefulWidget {
  @override
  _AtividadeState createState() => _AtividadeState();
}

class _AtividadeState extends State<Atividade> {
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

  Future<bool> getAtividades() async {
    var response =
        await ApiHelper.getRequest(context, globals.baseUrl + '/activities');
    var porcentagens = {};
    porcentagens['0'] = 0.0;
    porcentagens['1'] = 0.25;
    porcentagens['2'] = 0.50;
    porcentagens['3'] = 0.75;
    porcentagens['4'] = 1;
    List<QuestionModel> myQuestionsApi = new List();
    if (response['status'] == 200) {
      print(response);
      var i = 0;
      myQuestions.clear();
      while (i < response["books"][0]["questions"].length) {
        myQuestionsApi.add(
          QuestionModel(
            imageAssetPath: response["books"][0]["questions"][i]["img"],
            percent: double.parse(porcentagens[i.toString()].toString()),
            percentText: (porcentagens[i.toString()] * 100).toString() + "%",
            question: response["books"][0]["questions"][i]["title"],
            response1: response["books"][0]["questions"][i]["pages"][0]
                ['alternative'],
            response2: response["books"][0]["questions"][i]["pages"][1]
                ['alternative'],
            response3: response["books"][0]["questions"][i]["pages"][2]
                ['alternative'],
            response4: response["books"][0]["questions"][i]["pages"][3]
                ['alternative'],
            // percentText: ,
            // imagePath: response["books"][i]["thumbnail"],
            // title: response["books"][i]["title"],
            // description: response["books"][i]["description"],
            // lessonCount: 0,
            // themes: response["books"][i]["themes"],
            // pages: response["books"][i]["pages"],
            // money: 0,
            // rating: response["books"][i]["rating_star"],
            // rating_content: response["books"][i]["rating_content"],
          ),
        );
        i++;
      }
      print('finished');
      print(myQuestionsApi[1].getPercent().toString());
      setState(() {
        myQuestions = myQuestionsApi;
      });
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Aviso"),
              content: Text("Erro"),
            );
          });
    }

    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // myQuestions = getQuestions();
    getAtividades();
    controller = new PageController();
  }

  void nextPage() {
    slideIndex++;
    if (slideIndex == myQuestions.length) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => AtividadeFinalizado(),
        ),
      );
    } else {
      controller.animateToPage(slideIndex,
          duration: Duration(milliseconds: 500), curve: Curves.linear);
    }
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
                  Container(
                    height: MediaQuery.of(context).size.height - 200,
                    child: PageView(
                      controller: controller,
                      onPageChanged: (index) {
                        setState(() {
                          slideIndex = index;
                        });
                      },
                      children: <Widget>[
                        for (var i = 0; i < myQuestions.length; i++)
                          QuestionTile(
                            imageAssetPath: myQuestions[i].getImageAssetPath(),
                            question: myQuestions[i].getQuestion(),
                            percent: double.parse(
                                myQuestions[i].getPercent().toString()),
                            percentText: myQuestions[i].getPercentText(),
                            response1: myQuestions[i].getResponse1(),
                            response2: myQuestions[i].getResponse2(),
                            response3: myQuestions[i].getResponse3(),
                            response4: myQuestions[i].getResponse4(),
                            nextPage: nextPage,
                          ),
                      ],
                    ),
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

class QuestionTile extends StatelessWidget {
  String imageAssetPath;
  double percent;
  String question;
  String response1;
  String response2;
  String response3;
  String response4;
  String percentText;
  var nextPage;

  QuestionTile(
      {this.percent,
      this.percentText,
      this.question,
      this.imageAssetPath,
      this.response1,
      this.response2,
      this.response3,
      this.response4,
      this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 0),
        alignment: Alignment.center,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
                        percent: percent,
                        center: Text(percentText),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: DesignCourseAppTheme.nearlyGreen,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      question,
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
                    child: Image.network(imageAssetPath, width: 150),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.white24,
                          onTap: () {
                            //setState(() {});
                            nextPage();
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 48,
                            decoration: BoxDecoration(
                              color: DesignCourseAppTheme.nearlyGreen,
                            ),
                            child: Center(
                              child: Text(
                                response1,
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
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.white24,
                          onTap: () {
                            // setState(() {});
                            nextPage();
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 48,
                            decoration: BoxDecoration(
                              color: DesignCourseAppTheme.nearlyGreen,
                            ),
                            child: Center(
                              child: Text(
                                response2,
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
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.white24,
                          onTap: () {
                            //setState(() {});
                            nextPage();
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 48,
                            decoration: BoxDecoration(
                              color: DesignCourseAppTheme.nearlyGreen,
                            ),
                            child: Center(
                              child: Text(
                                response3,
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
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.white24,
                          onTap: () {
                            //setState(() {});
                            nextPage();
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 48,
                            decoration: BoxDecoration(
                              color: DesignCourseAppTheme.nearlyGreen,
                            ),
                            child: Center(
                              child: Text(
                                response4,
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
                      )
                    ],
                  )
                ],
              ),
            ]));
  }
}
