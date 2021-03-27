import 'dart:ui';
import 'package:flutter/material.dart';

class PaintingAndEffectsWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            'Painting and effects widgets',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 16,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('BackdropFilter'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that applies a filter to the existing painted content and then paints a child. This effect is relatively expensive, especially if the filter is non-local, such as a blur.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ClipOval'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text('-A widget that clips its child using an oval.'),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: ClipOval(
                  child: Image.network(
                      'https://images.unsplash.com/photo-1523965671143-ac717f1cb928'),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ClipPath'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text('-A widget that clips its child using a path.'),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: MyClipPathWidget(),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ClipRect'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child:
                    Text('-A widget that clips its child using a rectangle.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: ClipRect(
                  child: Image.network(
                      'https://images.unsplash.com/photo-1473992243898-fa7525e652a5'),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('CustomPaint'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that provides a canvas on which to draw during the paint phase.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DecoratedBox'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that paints a Decoration either before or after its child paints.'),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: DecoratedBox(
                    position: DecorationPosition.background,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                        color: const Color(0xFF000000),
                        style: BorderStyle.solid,
                        width: 4.0,
                      ),
                      borderRadius: BorderRadius.zero,
                      shape: BoxShape.rectangle,
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color(0x66000000),
                          blurRadius: 10.0,
                          spreadRadius: 4.0,
                        )
                      ],
                    ),
                    child: Container(
                      child: Container(
                        width: 200,
                        height: 200,
                        padding: EdgeInsets.all(20),
                        child: FlutterLogo(),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('FractionalTranslation'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that applies a translation expressed as a fraction of the box\'s size before painting its child.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Opacity'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that makes its child partially transparent.'),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue,
                        ),
                      ),

                      // const Text("Now you see me, now you don't!"),
                    ],
                  )),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('RotatedBox'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that rotates its child by a integral number of quarter turns.'),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: const Text('Hello World!'),
                  )),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Transform'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that applies a transformation before painting its child.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Transform(
                  alignment: Alignment.topRight,
                  transform: Matrix4.skewY(0.3)..rotateZ(12.0),
                  child: Container(
                    color: const Color(0xFFE8581C),
                    height: 50,
                    padding: const EdgeInsets.all(8.0),
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}

class MyClipPathWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TriangleClipper(),
      child: Image.network(
          "https://images.unsplash.com/photo-1513775192371-1b9d33760c3f"),
    );
  }
}
