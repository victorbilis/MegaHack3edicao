import 'package:best_flutter_ui_templates/design_course/category_list_view.dart';
import 'package:best_flutter_ui_templates/design_course/course_info_screen.dart';
import 'package:best_flutter_ui_templates/design_course/perfil.dart';
import 'package:best_flutter_ui_templates/design_course/popular_course_list_view.dart';
import 'package:best_flutter_ui_templates/main.dart';
import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/design_course/design_course_app_theme.dart';

class DesignCourseHomeScreen extends StatefulWidget {
  @override
  _DesignCourseHomeScreenState createState() => _DesignCourseHomeScreenState();
}

class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen> {
  CategoryType categoryType = CategoryType.ui;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              getAppBarUI(),
              getSearchBarUI(),
              getCategoryUI(),
              (categoryType == CategoryType.ui)
                  ? Container(
                      width: double.maxFinite,
                      height: 1000,
                      child: getPopularCourseUI())
                  : SingleChildScrollView(child: getTrilha()),
            ],
          ),
        ),
      ),
    );
  }

  Widget getCategoryUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /* Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
          child: Text(
            'Category',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
        ),*/
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: <Widget>[
              getButtonUI(CategoryType.ui, categoryType == CategoryType.ui),
              const SizedBox(
                width: 16,
              ),
              getButtonUI(
                  CategoryType.coding, categoryType == CategoryType.coding),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        /*CategoryListView(
          callBack: () {
            moveTo();
          },
        ),*/
      ],
    );
  }

  Widget getTrilha() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFF55C9C8),
                    image: DecorationImage(
                        image: AssetImage('assets/duck_trilha.png'))),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 250,
                ),
                Transform.rotate(
                    angle: 4.2,
                    child: Container(
                        width: 2, height: 40, color: Colors.blueAccent)),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 180,
                ),
                Transform.rotate(
                    angle: 4,
                    child: Container(
                        width: 2, height: 40, color: Colors.blueAccent)),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 60,
                ),
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFF55C9C8),
                        image: DecorationImage(
                            image: AssetImage('assets/pig_trilha.png'))),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 60,
                ),
                Transform.rotate(
                    angle: 8.2,
                    child: Container(
                        width: 2, height: 40, color: Colors.blueAccent)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Transform.rotate(
                    angle: 8.2,
                    child: Container(
                        width: 2, height: 40, color: Colors.blueAccent)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 180,
                ),
                Transform.rotate(
                    angle: 8.3,
                    child: Container(
                        width: 2, height: 40, color: Colors.blueAccent)),
              ],
            ),
            Row(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFF55C9C8),
                        image: DecorationImage(
                            image: AssetImage('assets/cow_trilha.png'))),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFC4C4C4),
                        image: DecorationImage(
                            image:
                                AssetImage('assets/another_duck_trilha.png'))),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFC4C4C4),
                        image: DecorationImage(
                            image: AssetImage('assets/fish_trilha.png'))),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFC4C4C4),
                        image: DecorationImage(
                            image: AssetImage('assets/cat_trilha.png'))),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFC4C4C4),
                        image: DecorationImage(
                            image: AssetImage('assets/dog_trilha.png'))),
                  ),
                ),
              ],
            ),
            /*Text(
              'Popular Course',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                letterSpacing: 0.27,
                color: DesignCourseAppTheme.darkerText,
              ),
            ),*/
            // Flexible(
            //   child: PopularCourseListView(
            //     callBack: () {
            //       moveTo();
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Widget getPopularCourseUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /*Text(
            'Popular Course',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),*/
          Flexible(
            child: PopularCourseListView(
              callBack: () {
                moveTo();
              },
            ),
          )
        ],
      ),
    );
  }

  void moveTo() {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => CourseInfoScreen(),
      ),
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.ui == categoryTypeData) {
      txt = 'Estante';
    } else if (CategoryType.coding == categoryTypeData) {
      txt = 'Trilha';
    }
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: DesignCourseAppTheme.nearlyWhite,
          border: isSelected
              ? Border(
                  bottom: BorderSide(
                      color: DesignCourseAppTheme.nearlyGreen, width: 1))
              : Border(
                  bottom: BorderSide(
                      color: DesignCourseAppTheme.nearlyGreen10, width: 1)),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 18, right: 18),
              child: Center(
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    letterSpacing: 0.27,
                    color: isSelected
                        ? DesignCourseAppTheme.nearlyGreen
                        : DesignCourseAppTheme.nearlyGreen10,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getSearchBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor('#F8FAFB'),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(13.0),
                    bottomLeft: Radius.circular(13.0),
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Pesquisar...',
                            border: InputBorder.none,
                            helperStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: HexColor('#B9BABC'),
                            ),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              color: HexColor('#B9BABC'),
                            ),
                          ),
                          onEditingComplete: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.search, color: HexColor('#B9BABC')),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Raízes do Saber',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.27,
                    color: DesignCourseAppTheme.darkerText,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            splashColor: Colors.white24,
                  onTap: () {
                    setState(() {
                      Navigator.push<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (BuildContext context) => PerfilScreen(),
                        ),
                      );
                    });
                  },
            child: Container(
              width: 60,
              height: 60,
              child: Image.asset('assets/design_course/perfil.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 60,
              height: 60,
              child: Text('600 pontos',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
}

enum CategoryType {
  ui,
  coding,
  basic,
}
