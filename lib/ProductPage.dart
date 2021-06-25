import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import './ListviewPage.dart';
import './LoginPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPage extends StatelessWidget {
  ProductPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffebebeb),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 100.0, end: 0.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff055e7f),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 52.9, start: 24.0),
                  Pin(start: 23.5, end: 23.5),
                  child:
                      // Adobe XD layer: 'Icon awesome-user-c…' (shape)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                      ),
                    ],
                    child: SvgPicture.string(
                      _svg_wism8s,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 68.1, middle: 0.5),
                  Pin(start: 23.5, end: 23.5),
                  child:
                      // Adobe XD layer: 'Icon awesome-shoppi…' (shape)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => ListviewPage(),
                      ),
                    ],
                    child: SvgPicture.string(
                      _svg_a9nxym,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 61.2, end: 27.0),
            Pin(size: 46.6, end: 26.7),
            child:
                // Adobe XD layer: 'Icon awesome-sign-o…' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => LoginPage(),
                ),
              ],
              child: SvgPicture.string(
                _svg_byw2hw,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 100.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 75.0, middle: 0.5),
            Pin(size: 40.0, start: 29.0),
            child: Text(
              'Titulo',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 30,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 134.0, middle: 0.5019),
            Pin(size: 33.0, start: 69.0),
            child: Text(
              'Precio: \$300',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 25,
                color: const Color(0xd6000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 31.0, end: 31.0),
            Pin(size: 237.0, middle: 0.2524),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 134.0, start: 35.0),
            Pin(size: 33.0, middle: 0.5),
            child: Text(
              'Descripción:',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 25,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.0, end: 29.0),
            Pin(size: 146.0, middle: 0.6511),
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est ',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 137.0, end: 31.0),
            Pin(size: 52.0, middle: 0.811),
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
                  Pin(size: 69.0, middle: 0.5),
                  Pin(size: 24.0, middle: 0.5),
                  child: Text(
                    'Comprar',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 18,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 137.0, start: 30.0),
            Pin(size: 52.0, middle: 0.811),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  //pageBuilder: () => ,
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
                    Pin(size: 49.0, middle: 0.5),
                    Pin(size: 24.0, middle: 0.5),
                    child: Text(
                      'Volver',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 18,
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

const String _svg_wism8s =
    '<svg viewBox="24.0 774.5 52.9 52.9" ><path transform="translate(24.0, 773.97)" d="M 26.46884155273438 0.5625 C 11.8469409942627 0.5625 0 12.40944004058838 0 27.03134155273438 C 0 41.65324020385742 11.8469409942627 53.50017929077148 26.46884155273438 53.50017929077148 C 41.09074401855469 53.50017929077148 52.93768310546875 41.65324020385742 52.93768310546875 27.03134155273438 C 52.93768310546875 12.40944004058838 41.09074401855469 0.5625 26.46884155273438 0.5625 Z M 26.46884155273438 10.80850219726563 C 31.6558780670166 10.80850219726563 35.86101150512695 15.01363182067871 35.86101150512695 20.20067024230957 C 35.86101150512695 25.3877124786377 31.6558780670166 29.59284400939941 26.46884155273438 29.59284400939941 C 21.28180122375488 29.59284400939941 17.0766716003418 25.3877124786377 17.0766716003418 20.20067024230957 C 17.0766716003418 15.01363563537598 21.28179931640625 10.80850219726563 26.46884155273438 10.80850219726563 Z M 26.46884155273438 47.52334594726563 C 20.20383834838867 47.52334594726563 14.58988189697266 44.68434906005859 10.83301448822021 40.24441528320313 C 12.83952236175537 36.46620178222656 16.76715850830078 33.86200714111328 21.34584045410156 33.86200714111328 C 21.60198974609375 33.86200714111328 21.85814094543457 33.90470504760742 22.10361671447754 33.97940826416016 C 23.49109840393066 34.42766952514648 24.9426155090332 34.71583938598633 26.46884155273438 34.71583938598633 C 27.99506950378418 34.71583938598633 29.4572582244873 34.42766952514648 30.83406639099121 33.97940826416016 C 31.07954406738281 33.90470123291016 31.33569526672363 33.86200714111328 31.59184265136719 33.86200714111328 C 36.17052841186523 33.86200714111328 40.09816360473633 36.46620559692383 42.10467147827148 40.24441528320313 C 38.34780502319336 44.68434906005859 32.73384857177734 47.52334594726563 26.46884155273438 47.52334594726563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a9nxym =
    '<svg viewBox="162.5 774.5 68.1 52.9" ><path transform="translate(162.47, 772.28)" d="M 68.06230926513672 23.99226188659668 L 68.06230926513672 25.88288116455078 C 68.06230926513672 27.44914054870605 66.79264068603516 28.71881103515625 65.22637939453125 28.71881103515625 L 64.28106689453125 28.71881103515625 L 61.19545745849609 50.31772232055664 C 60.79630279541016 53.1119384765625 58.40325164794922 55.18748474121094 55.58067321777344 55.18748474121094 L 12.48163414001465 55.18748474121094 C 9.6590576171875 55.18748474121094 7.266005039215088 53.1119384765625 6.866730690002441 50.31772232055664 L 3.78123927116394 28.71881103515625 L 2.835929393768311 28.71881103515625 C 1.2696692943573 28.71881103515625 0 27.44914054870605 0 25.88288116455078 L 0 23.99226188659668 C 0 22.42600059509277 1.2696692943573 21.15633201599121 2.835929393768311 21.15633201599121 L 10.79319286346436 21.15633201599121 L 23.41071510314941 3.807415008544922 C 24.63902854919434 2.118619203567505 27.00371932983398 1.745103597640991 28.69275283813477 2.973415374755859 C 30.38166618347168 4.201727390289307 30.75506210327148 6.566538333892822 29.52675247192383 8.255451202392578 L 20.14419746398926 21.15633201599121 L 47.91810989379883 21.15633201599121 L 38.53555679321289 8.255334854125977 C 37.30724716186523 6.566538333892822 37.68075942993164 4.20160961151123 39.36967468261719 2.973297595977783 C 41.058349609375 1.744985580444336 43.42339706420898 2.118383169174194 44.65171051025391 3.807297229766846 L 57.26911544799805 21.15633201599121 L 65.22637939453125 21.15633201599121 C 66.79264068603516 21.15633201599121 68.06230926513672 22.42600059509277 68.06230926513672 23.99226188659668 Z M 36.86708450317383 44.78907775878906 L 36.86708450317383 31.55474281311035 C 36.86708450317383 29.98848152160645 35.597412109375 28.71881103515625 34.03115463256836 28.71881103515625 C 32.46489334106445 28.71881103515625 31.19522476196289 29.98848152160645 31.19522476196289 31.55474281311035 L 31.19522476196289 44.78907775878906 C 31.19522476196289 46.3553352355957 32.46489334106445 47.62500762939453 34.03115463256836 47.62500762939453 C 35.597412109375 47.62500762939453 36.86708450317383 46.3553352355957 36.86708450317383 44.78907775878906 Z M 50.10142135620117 44.78907775878906 L 50.10142135620117 31.55474281311035 C 50.10142135620117 29.98848152160645 48.83174896240234 28.71881103515625 47.2654914855957 28.71881103515625 C 45.69923400878906 28.71881103515625 44.42956161499023 29.98848152160645 44.42956161499023 31.55474281311035 L 44.42956161499023 44.78907775878906 C 44.42956161499023 46.3553352355957 45.69923400878906 47.62500762939453 47.2654914855957 47.62500762939453 C 48.83174896240234 47.62500762939453 50.10142135620117 46.3553352355957 50.10142135620117 44.78907775878906 Z M 23.63274574279785 44.78907775878906 L 23.63274574279785 31.55474281311035 C 23.63274574279785 29.98848152160645 22.36307716369629 28.71881103515625 20.79681587219238 28.71881103515625 C 19.23055458068848 28.71881103515625 17.96088600158691 29.98848152160645 17.96088600158691 31.55474281311035 L 17.96088600158691 44.78907775878906 C 17.96088600158691 46.3553352355957 19.23055458068848 47.62500762939453 20.79681587219238 47.62500762939453 C 22.36307716369629 47.62500762939453 23.63274574279785 46.3553352355957 23.63274574279785 44.78907775878906 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_byw2hw =
    '<svg viewBox="304.8 777.7 61.2 46.6" ><path transform="translate(304.82, 773.2)" d="M 60.30901336669922 29.86241912841797 L 39.92286682128906 50.24856948852539 C 38.10267639160156 52.06875991821289 34.94767761230469 50.79462432861328 34.94767761230469 48.18568420410156 L 34.94767761230469 36.53646087646484 L 18.44460678100586 36.53646087646484 C 16.83070373535156 36.53646087646484 15.532301902771 35.23805236816406 15.532301902771 33.62415313720703 L 15.532301902771 21.97492408752441 C 15.532301902771 20.36102104187012 16.83070373535156 19.06261825561523 18.44460678100586 19.06261825561523 L 34.94767761230469 19.06261825561523 L 34.94767761230469 7.413391590118408 C 34.94767761230469 4.816586017608643 38.09054183959961 3.530316829681396 39.92286682128906 5.350507736206055 L 60.30901336669922 25.73665237426758 C 61.43753433227539 26.8773078918457 61.43753433227539 28.72176551818848 60.30901336669922 29.86241912841797 Z M 23.29845237731934 49.6418342590332 L 23.29845237731934 44.78799057006836 C 23.29845237731934 43.98711013793945 22.64318466186523 43.33184051513672 21.84229850769043 43.33184051513672 L 11.64922618865967 43.33184051513672 C 9.501399993896484 43.33184051513672 7.766150951385498 41.59659194946289 7.766150951385498 39.44876480102539 L 7.766150951385498 16.15030860900879 C 7.766150951385498 14.00248432159424 9.501399993896484 12.26723670959473 11.64922618865967 12.26723670959473 L 21.84229850769043 12.26723670959473 C 22.64318466186523 12.26723670959473 23.29845237731934 11.61196708679199 23.29845237731934 10.81108283996582 L 23.29845237731934 5.957238674163818 C 23.29845237731934 5.156353950500488 22.64318466186523 4.50108528137207 21.84229850769043 4.50108528137207 L 11.64922618865967 4.50108528137207 C 5.217882633209229 4.50108528137207 0 9.718967437744141 0 16.15030860900879 L 0 39.44876480102539 C 0 45.88010787963867 5.217882633209229 51.09799194335938 11.64922618865967 51.09799194335938 L 21.84229850769043 51.09799194335938 C 22.64318466186523 51.09799194335938 23.29845237731934 50.44272232055664 23.29845237731934 49.6418342590332 Z" fill="#fefefe" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
