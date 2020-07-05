import 'package:flutter/material.dart';


class QuestionModel{

  String imageAssetPath;
  double percent;
  String question;
  String response1;
  String response2;
  String response3;
  String response4;
  String percentText;

  QuestionModel({this.percent,this.percentText,this.question,this.imageAssetPath,this.response1,this.response2,this.response3,this.response4});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setQuestion(String getQuestion){
    question = getQuestion;
  }

  void setPercent(double getPercent){
    percent = getPercent;
  }
  
  void setResponse1(String getResponse1){
    response1 = getResponse1;
  }

  void setResponse2(String getResponse2){
    response2 = getResponse2;
  }

  void setResponse3(String getResponse3){
    response3 = getResponse3;
  }

  void setResponse4(String getResponse4){
    response4 = getResponse4;
  }

  void setPercentText(String getPercentText){
    percentText = getPercentText;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getQuestion(){
    return question;
  }

  double getPercent(){
    return percent;
  }

  String getResponse1(){
    return response1;
  }

  String getResponse2(){
    return response2;
  }

  String getResponse3(){
    return response3;
  }

  String getResponse4(){
    return response4;
  }

  String getPercentText(){
    return percentText;
  }

}


List<QuestionModel> getQuestions(){

  List<QuestionModel> questions = new List<QuestionModel>();
  QuestionModel questionModel = new QuestionModel();

  //1
  questionModel.setQuestion("Que animal é esse?");
  questionModel.setImageAssetPath("assets/duck.png");
  questionModel.setPercentText("25%");
  questionModel.setPercent(0.25);
  questionModel.setResponse1("PATO");
  questionModel.setResponse2("GALO");
  questionModel.setResponse3("RATO");
  questionModel.setResponse4("GATO");
  questions.add(questionModel);

  questionModel = new QuestionModel();

   //1
  questionModel.setQuestion("Que animal é esse?");
  questionModel.setImageAssetPath("assets/duck.png");
  questionModel.setPercentText("50%");
  questionModel.setPercent(0.5);
  questionModel.setResponse1("PATO");
  questionModel.setResponse2("GALO");
  questionModel.setResponse3("RATO");
  questionModel.setResponse4("GATO");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  questionModel.setQuestion("Que animal é esse?");
  questionModel.setImageAssetPath("assets/duck.png");
  questionModel.setPercentText("75%");
  questionModel.setPercent(0.75);
  questionModel.setResponse1("PATO");
  questionModel.setResponse2("GALO");
  questionModel.setResponse3("RATO");
  questionModel.setResponse4("GATO");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  questionModel.setQuestion("Que animal é esse?");
  questionModel.setImageAssetPath("assets/duck.png");
  questionModel.setPercentText("100%");
  questionModel.setPercent(1);
  questionModel.setResponse1("PATO");
  questionModel.setResponse2("GALO");
  questionModel.setResponse3("RATO");
  questionModel.setResponse4("GATO");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  return questions;
}