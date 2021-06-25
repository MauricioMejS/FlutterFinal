import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:adobe_xd/pinned.dart';

import 'package:adobe_xd/page_link.dart';

class SingUpPage extends StatefulWidget {
  @override
  _SingUpPage createState() => _SingUpPage();
}

class _SingUpPage extends State<SingUpPage> {
  String _email, _pass, _conpass;
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final _formKeyRegister = GlobalKey<FormState>();

  bool isEmailError = false, isPassError = false, isConfirmPassError = false;
  int _value = 1;

  TextEditingController _inputFieldDateController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child:
                // Adobe XD layer: 'Fondo' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Fondo.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 16.0, end: 16.0),
            Pin(size: 541.0, middle: 0.5613),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffebebeb),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 146.0, middle: 0.502),
            Pin(size: 139.0, middle: 0.1921),
            child:
                // Adobe XD layer: 'Logo' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage('assets/images/Logo.png'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
              Pin(size: 270.0, middle: 0.502), Pin(size: 300.0, middle: 0.561),
              child: Container(
                  child: Form(
                key: _formKeyRegister,
                child: Container(
                    margin: const EdgeInsets.only(
                        top: 5.0, left: 20.0, right: 20.0),
                    child: ListView(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                          ),
                          validator: (String val) {
                            if (val.trim().isEmpty) {
                              return ('El email es requerido');
                            }

                            _email = val.trim();
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                          ),
                          onChanged: (String val) {
                            setState(() {
                              _pass = val.trim();
                            });
                          },
                          validator: (String val) {
                            if (isPassError) {
                              return ('La contraseña proporcionada es incorrecta');
                            }
                            if (val.trim().isEmpty) {
                              return ('La contraseña es requerida');
                            }
                            if (val.trim().length <= 5)
                              return ('La contraseña es muy corta');

                            _pass = val.trim();
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            labelText: 'Confirmar contraseña',
                          ),
                          onChanged: (String val) {
                            setState(() {
                              _conpass = val.trim();
                            });
                          },
                          validator: (String val) {
                            if (isConfirmPassError) {
                              isConfirmPassError = false;
                              return ('La contraseñas no coinciden');
                            }
                            if (val.trim().isEmpty) {
                              return ('La contraseña es requerida');
                            }
                            if (val.trim().length <= 5)
                              return ('La contraseña es muy corta');

                            _conpass = val.trim();
                          },
                        ),
                      )
                    ])),
              ))),
          Pinned.fromPins(
            Pin(size: 230.0, middle: 0.502),
            Pin(size: 35.0, middle: 0.761),
            child: ElevatedButton(
              onPressed: () {
                if (_conpass != _pass) {
                  isConfirmPassError = true;
                }

                if (_formKeyRegister.currentState.validate()) {
                  _tryRegister(_email, _pass, context);
                } else {
                  AlertDialog(
                    title: const Text('Error!'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('Oh no!'),
                          Text(
                              'A ocurrido un error, porfavor intentalo de nuevo'),
                        ],
                      ),
                    ),
                  );
                }
              },
              child: Text('Registar'),
            ),
          )
        ],
      ),
    );
  }

  Widget _tryRegister(String curp, String pass, BuildContext context) {
    auth.createUserWithEmailAndPassword(email: curp, password: pass).then(
        (value) => Navigator.pushNamed(context, 'ListView').catchError((e) {
              switch (e.message) {
                case 'There is no user record corresponding to this identifier. The user may have been deleted.':
                  isEmailError = true;
                  _formKeyRegister.currentState.validate();
                  break;
                case 'The password is invalid or the user does not have a password.':
                  isPassError = true;
                  _formKeyRegister.currentState.validate();
                  break;
                default:
                  print('Case ${e.message} is not yet implemented');
              }
            }));
    return null;
  }
}
