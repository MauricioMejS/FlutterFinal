import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './ListviewPage.dart';
import 'package:adobe_xd/page_link.dart';

class SellPage extends StatelessWidget {
  SellPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 45.0, end: 44.0),
            Pin(size: 55.0, start: 75.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 55.0, middle: 0.2041),
            Pin(size: 27.0, start: 89.0),
            child: Text(
              'Titulo ',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 45.0, end: 44.0),
            Pin(size: 55.0, middle: 0.255),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 54.0, start: 27.0),
                  Pin(size: 27.0, middle: 0.4643),
                  child: Text(
                    'Precio',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 20,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 45.0, end: 44.0),
            Pin(size: 227.0, middle: 0.5304),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 103.0, middle: 0.2483),
            Pin(size: 27.0, middle: 0.4175),
            child: Text(
              'Descripción',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 38.0),
            Pin(size: 69.0, middle: 0.8325),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => ListviewPage(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21.0),
                              color: const Color(0xff055e7f),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff000000)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 88.0, middle: 0.5),
                    Pin(size: 33.0, middle: 0.5),
                    child: Text(
                      'Publicar',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 25,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
