import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:proyecto_final/components/rounded_password_field.dart';
import 'package:proyecto_final/components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginPage extends StatelessWidget {
  String _email, _pass;
  FirebaseAuth auth = FirebaseAuth.instance;
  bool isEmailError = false, isPassError = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController _controllerEmail = TextEditingController();

    Size size = MediaQuery.of(context).size;
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
            Pin(start: 10.0, end: 16.0),
            Pin(size: 541.0, middle: 0.5613),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
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
            Pin(size: 270.0, middle: 0.502),
            Pin(size: 139.0, middle: 0.561),
            child: Container(
              child: Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter Email',
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: (val) {
                      if (isEmailError) {
                        isEmailError = false;
                        return ('El Email proporcionado no existe');
                      }
                      if (val.trim().isEmpty) {
                        return ('Email is required');
                      }

                      _email = val.trim();
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your password',
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                    validator: (String val) {
                      if (isPassError) {
                        isPassError = false;
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
                ]),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 38.0),
            Pin(size: 69.0, middle: 0.7889),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0), Pin(start: 0.0, end: 0.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _tryLogin(_email, _pass, context);
                              } else {
                                SnackBar(
                                  content: Text(
                                      'Oh no! Algo malo acaba de ocurrir, porfavor intente de nuevo. Puede que su curp o contraseña esté erroneos, verifiquelo'),
                                  action: SnackBarAction(
                                    label: 'OK',
                                    onPressed: () {
                                      // Some code to undo the change.
                                    },
                                  ),
                                );
                              }
                            },
                            child: Text('Ingresar'),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
              Pin(size: 248.0, middle: 0.4934), Pin(size: 35.0, middle: 0.886),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.resolveWith(getColorForTextBttn),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'SingUp');
                },
                child: const Text('Register'),
              )),
        ],
      ),
    );
  }

  _tryLogin(String email, String pass, BuildContext context) {
    auth
        .signInWithEmailAndPassword(email: email, password: pass)
        .then((value) => Navigator.pushNamed(context, 'ListView'))
        .catchError((e) {
      switch (e.message) {
        case 'There is no user record corresponding to this identifier. The user may have been deleted.':
          isEmailError = true;
          _formKey.currentState.validate();
          break;
        case 'The password is invalid or the user does not have a password.':
          isPassError = true;
          _formKey.currentState.validate();
          break;
        default:
          print('Case ${e.message} is not yet implemented');
      }
    });
  }
}

Color getColorForTextBttn(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.red;
  }
  return Colors.blue;
}

Color getColorForElevatedButton(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blue;
  }
  return Colors.orange[300];
}
