import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './ListviewPage.dart';
import 'package:adobe_xd/page_link.dart';
import './SellPage.dart';

class Menu extends StatelessWidget {
  Menu({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 39.0, end: 38.0),
            Pin(size: 69.0, middle: 0.3619),
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
                    Pin(size: 96.0, middle: 0.5),
                    Pin(size: 33.0, middle: 0.5),
                    child: Text(
                      'Comprar',
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
          Pinned.fromPins(
            Pin(start: 39.0, end: 38.0),
            Pin(size: 69.0, middle: 0.5588),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => SellPage(),
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
                    Pin(size: 78.0, middle: 0.5),
                    Pin(size: 33.0, middle: 0.5278),
                    child: Text(
                      'Vender',
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
