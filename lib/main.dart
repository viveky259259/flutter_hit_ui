import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(FancyBottomNavigation());

class FancyBottomNavigation extends StatefulWidget {
  @override
  _FancyBottomNavigationState createState() => _FancyBottomNavigationState();
}

class _FancyBottomNavigationState extends State<FancyBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          backgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
            color: Colors.black54,
          ),
          bottomAppBarTheme: BottomAppBarTheme(color: Colors.black)),
      home: Scaffold(
          appBar: AppBar(),
          backgroundColor: Colors.white10,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 42, left: 32, right: 32),
            child: Bottom(),
          )),
    );
  }
}

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class BottomNavigtionModel {
  final int currentIndex;
  bool isSelected;

  BottomNavigtionModel(this.currentIndex, this.isSelected);
}

class _BottomState extends State<Bottom> {
  int selectedIndex, selectedIndex1;

  List<BottomNavigtionModel> bottoms;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
    selectedIndex1 = 0;
    bottoms = List();
    bottoms.add(BottomNavigtionModel(0, selectedIndex == 0));
    bottoms.add(BottomNavigtionModel(1, selectedIndex == 1));
    bottoms.add(BottomNavigtionModel(2, selectedIndex == 2));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: double.infinity,
      child: Card(
          color: Colors.white10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
//              AnimatedContainer(
//                width: double.infinity,
//                height: 2,
//                duration: Duration(seconds: 1),
//                child: Row(
//                  children: <Widget>[
//                    Expanded(
//                      child: LayoutBuilder(builder: (context, constraint) {
//                        print(constraint.maxWidth * 0.4);
//                        return Container(
//                          alignment: Alignment.center,
//                          margin: EdgeInsets.symmetric(
//                              horizontal: constraint.maxWidth * 0.3),
////                          width: constraint.maxWidth * 0.4,
//                          color: selectedIndex == 0
//                              ? Colors.white
//                              : Colors.black38,
//                        );
//                      }),
//                    ),
//                    Expanded(
//                      child: LayoutBuilder(builder: (context, constraint) {
//                        print(constraint.maxWidth * 0.4);
//                        return Container(
//                          alignment: Alignment.center,
//                          margin: EdgeInsets.symmetric(
//                              horizontal: constraint.maxWidth * 0.3),
////                          width: constraint.maxWidth * 0.4,
//                          color: selectedIndex == 1
//                              ? Colors.white
//                              : Colors.black38,
//                        );
//                      }),
//                    ),
//                    Expanded(
//                      child: LayoutBuilder(builder: (context, constraint) {
//                        print(constraint.maxWidth * 0.4);
//                        return Container(
//                          alignment: Alignment.center,
//                          margin: EdgeInsets.symmetric(
//                              horizontal: constraint.maxWidth * 0.3),
////                          width: constraint.maxWidth * 0.4,
//                          color: selectedIndex == 2
//                              ? Colors.white
//                              : Colors.black38,
//                        );
//                      }),
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                color: Colors.black38,
//                width: double.infinity,
//                child: Transform.translate(
//                  offset: Offset(1 * selectedIndex.toDouble(), 0),
//                  child: Container(
//                    width: 50,
//                    margin: EdgeInsets.symmetric(horizontal: 130),
//                    height: 10,
////                  alignment: Alignment.center,
////                  margin: EdgeInsets.symmetric(horizontal: 200),
//                    color: Colors.white,
//                  ),
//                ),
//              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  double width = constraints.maxWidth;
                  double eachBlocWidth = width / 3;
                  double actualSize = eachBlocWidth * 0.6;
                  EdgeInsets e = EdgeInsets.only(
                      left: eachBlocWidth * selectedIndex + actualSize / 2,
                      right:
                          eachBlocWidth * (2 - selectedIndex) + actualSize / 2);
                  return AnimatedContainer(
                    margin: e,
                    width: double.infinity,
                    height: 3,
                    duration: Duration(milliseconds: 374),
                    curve: Curves.fastOutSlowIn,
                    child: Container(
                      width: actualSize,
                      color: Colors.white,
                    ),
                  );
                },
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          setState(() {
                            selectedIndex = 0;
                            selectedIndex1 = -1;
                          });
                          await Future.delayed(Duration(milliseconds: 561));
                          setState(() {
                            selectedIndex1 = 0;
                          });
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
//                        color: Colors.black,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            if (selectedIndex1 == 0)
                              LayoutBuilder(
                                builder: (_, constraint) {
                                  print(constraint);
                                  return CustomPaint(
                                    painter: Lamp(constraint.maxWidth,
                                        constraint.maxHeight),
                                    foregroundPainter: Lamp(constraint.maxWidth,
                                        constraint.maxHeight),
                                    isComplex: true,
                                    child: Container(
//                            color: Colors.redAccent,
                                        ),
                                  );
                                },
                              ),
                            Center(
                              child: Icon(
                                Icons.card_travel,
                                color: selectedIndex1 == 0
                                    ? Colors.white
                                    : Color(0x61FFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          setState(() {
                            selectedIndex = 1;
                            selectedIndex1 = -1;
                          });
                          await Future.delayed(Duration(milliseconds: 561));
                          setState(() {
                            selectedIndex1 = 1;
                          });
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
//                        color: Colors.black,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            if (selectedIndex1 == 1)
                              LayoutBuilder(
                                builder: (_, constraint) {
                                  print(constraint);
                                  return CustomPaint(
                                    painter: Lamp(constraint.maxWidth,
                                        constraint.maxHeight),
                                    foregroundPainter: Lamp(constraint.maxWidth,
                                        constraint.maxHeight),
                                    isComplex: true,
                                    child: Container(
//                            color: Colors.redAccent,
                                        ),
                                  );
                                },
                              ),
                            Center(
                              child: Icon(
                                Icons.favorite_border,
                                color: selectedIndex1 == 1
                                    ? Colors.white
                                    : Color(0x61FFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          setState(() {
                            selectedIndex = 2;
                            selectedIndex1 = -1;
                          });
                          await Future.delayed(Duration(milliseconds: 561));
                          setState(() {
                            selectedIndex1 = 2;
                          });
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
//                        color: Colors.black,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            if (selectedIndex1 == 2)
                              LayoutBuilder(
                                builder: (_, constraint) {
                                  print(constraint);
                                  return CustomPaint(
                                    painter: Lamp(constraint.maxWidth,
                                        constraint.maxHeight),
                                    foregroundPainter: Lamp(constraint.maxWidth,
                                        constraint.maxHeight),
                                    isComplex: true,
                                    child: Container(
//                            color: Colors.redAccent,
                                        ),
                                  );
                                },
                              ),
                            Center(
                              child: Icon(
                                Icons.search,
                                color: selectedIndex1 == 2
                                    ? Colors.white
                                    : Color(0x61FFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class Lamp extends CustomPainter {
  final double width;
  final double height;

  Lamp(this.width, this.height);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var path = Path();
    var rect = Offset.zero & size;
    paint.shader = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.white24,
        Colors.black12,
      ],
    ).createShader(rect);
    path.moveTo(width * 0.3, 0);
    path.lineTo(width * 0.14, height);
    path.lineTo(width - width * 0.14, height);
    path.lineTo(width - width * 0.3, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(Lamp oldDelegate) {
    return false;
  }
}

class LampTop extends CustomPainter {
  final double width;
  final double height;

  LampTop(this.width, this.height);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
        Rect.fromLTRB(width * 0.3, 0, width - width * 0.3, 3),
        Paint()
          ..color = Colors.white
          ..strokeCap = StrokeCap.round);
  }

  @override
  bool shouldRepaint(LampTop oldDelegate) {
    return false;
  }
}
