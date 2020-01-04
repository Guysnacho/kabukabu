import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kabu Rideshare',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Expletus Sans regular',
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => Welcome(),
        '/SignUp': (context) => SignUp(),
        '/Login': (context) => LogIn(),
        '/dash': (context) => Dash(),
        '/Settings': (context) => Settings(),
      },
    );
  }
}

class Welcome extends StatefulWidget{
  @override
  _WelcomeState createState()=> _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  TextStyle style = TextStyle(fontFamily: 'Expletus Sans regular', fontSize: 20);

  Widget build(BuildContext context) {

    //Sign Up Button
    final joinButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff6cbc35),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(context, '/SignUp');
        },
        child: Text("Sign Up",
            textAlign: TextAlign.center,
            style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    //Login Button
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff6cbc35),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(context, '/Login');
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset('logo.png',
                  fit: BoxFit.contain),
                ),
                SizedBox(height: 35),
                joinButton,
                SizedBox(height: 35),
                loginButton,
              ],
            ),
          )
        ),
      ),
    );
  }
}

class SignUp extends StatefulWidget{
  @override
  _SignUpState createState()=> _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextStyle style = TextStyle(fontFamily: 'Expletus Sans regular', fontSize: 20);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _name;
  String _email;
  String _mobile;
  Widget build(BuildContext context) {
    //email
    final usernameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      keyboardType: TextInputType.emailAddress,
    );

    //email confirmation
    final confirmation = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm your Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );

    //Password
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
    //Validation Code
/*
    String validateName(String value) {
      if (value.length < 3)
        return 'Name must be more than 2 charater';
      else
        return null;
    }

    String validateMobile(String value) {
      if (value.length != 10)
        return 'Please use a valid phone number (Without symbols)';
      else
        return null;
    }

    String validateEmail(String value) {
      Pattern pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = new RegExp(pattern);
      if (!regex.hasMatch(value))
        return 'Enter Valid Email';
      else
        return null;
    }

    void _validateInputs() {
      if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
        _formKey.currentState.save();
      } else {
//    If all data are not valid then start auto validation.
        setState(() {
          _autoValidate = true;
        });
      }
    }
    Widget FormUI() {
      return new Column(
        children: <Widget>[
          new TextFormField(
            decoration: const InputDecoration(labelText: 'Name'),
            keyboardType: TextInputType.text,
            validator: validateName,
            onSaved: (String val) {
              _name = val;
            },
          ),
          new TextFormField(
            decoration: const InputDecoration(labelText: 'Mobile'),
            keyboardType: TextInputType.phone,
            validator: validateMobile,
            onSaved: (String val) {
              _mobile = val;
            },
          ),
          new TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            validator: validateEmail,
            onSaved: (String val) {
              _email = val;
            },
          ),
        ],
      );
    }
*/

    final joinButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.deepPurple,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){},
        child: Text("Sign Up",
            textAlign: TextAlign.center,
            style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
            child: Padding(
              padding: const EdgeInsets.all(36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 155.0,
                    child: Image.asset('compass.gif',
                        fit: BoxFit.contain),
                  ),
                  SizedBox(
                    height: 55,
                    child: Text('Welcome to Kabu',
                    style: style.copyWith(fontWeight: FontWeight.bold),
                  ),
                  ),
                  SizedBox(height: 45.0),
                  usernameField,
                  SizedBox(height: 32.0),
                  confirmation,
                  SizedBox(height: 32),
                  passwordField,
                  /*
                  new Form(
                    key: _formKey,
                      autovalidate: _autoValidate,
                      child: FormUI(),
                  )*/
                  SizedBox(height: 35),
                  joinButton,

                ],
              ),
            ),
        ),
      ),
    );
  }
}

class LogIn extends StatefulWidget{
  @override
  _LogInState createState()=> _LogInState();
}

class _LogInState extends State<LogIn> {
  TextStyle style = TextStyle(fontFamily: 'Expletus Sans regular', fontSize: 20);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _name;
  String _email;
  String _mobile;
  Widget build(BuildContext context) {
    //email
    final usernameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      keyboardType: TextInputType.emailAddress,
    );

    //Password
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      keyboardType: TextInputType.text,
    );
    //Validation Code
    /*
    String validateName(String value) {
      if (value.length < 3)
        return 'Name must be more than 2 charater';
      else
        return null;
    }

    String validateMobile(String value) {
      if (value.length != 10)
        return 'Please use a valid phone number (Without symbols)';
      else
        return null;
    }

    String validateEmail(String value) {
      Pattern pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = new RegExp(pattern);
      if (!regex.hasMatch(value))
        return 'Enter Valid Email';
      else
        return null;
    }

    void _validateInputs() {
      if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
        _formKey.currentState.save();
      } else {
//    If all data are not valid then start auto validation.
        setState(() {
          _autoValidate = true;
        });
      }
    }
    Widget FormUI() {
      return new Column(
        children: <Widget>[
          new TextFormField(
            decoration: const InputDecoration(labelText: 'Name'),
            keyboardType: TextInputType.text,
            validator: validateName,
            onSaved: (String val) {
              _name = val;
            },
          ),
          new TextFormField(
            decoration: const InputDecoration(labelText: 'Mobile'),
            keyboardType: TextInputType.phone,
            validator: validateMobile,
            onSaved: (String val) {
              _mobile = val;
            },
          ),
          new TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            validator: validateEmail,
            onSaved: (String val) {
              _email = val;
            },
          ),
        ],
      );
    }
*/

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.deepPurple,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          Navigator.pushNamedAndRemoveUntil(context, '/dash', (Route<dynamic> route) => false);
          },
        child: Text("Log In",
            textAlign: TextAlign.center,
            style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset('compass.gif',
                      fit: BoxFit.contain),
                ),
                SizedBox(
                  height: 55,
                  child: Text('Welcome Back!',
                    style: style.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 45.0),
                usernameField,
                SizedBox(height: 32),
                passwordField,

                //Form Code
                /*
                  new Form(
                    key: _formKey,
                      autovalidate: _autoValidate,
                      child: FormUI(),
                  )*/
                SizedBox(height: 35),
                loginButton,

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Dash extends StatefulWidget{
  @override
  _DashState createState()=> _DashState();
}

class _DashState extends State<Dash>{
  TextStyle style = TextStyle(fontFamily: 'Expletus Sans regular', fontSize: 20);
  Completer<GoogleMapController> _controller = Completer();

  CameraPosition _kLake = CameraPosition(
  target: LatLng(45.521563, -122.677433),
  zoom: 11.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.purple[300],
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.network("https://firebasestorage.googleapis.com/v0/b/kabukabu-8ab46.appspot.com/o/Assets%2F5-512.png?alt=media&token=0861a73e-d7b6-47a7-b98c-a4afae4bf0e8"),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Samuel Adetunji'),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/4,
                  child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/kabukabu-8ab46.appspot.com/o/Assets%2Fgr14upppv3z11.jpg?alt=media&token=f7429f47-d6ce-45ed-b35e-3f57c0bfdb21",
                      fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: (){
                //Update the state
                Navigator.pushReplacementNamed(context,'/dash');
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap:(){
                Navigator.pushNamed(context, '/Settings');
              }
            ),
            ListTile(
              title: Text('History'),
              onTap: (){
                //Update the state
                Navigator.pop(context);
              },
            )
          ],
        )
      )
    );
  }
}

class Settings extends StatefulWidget{
  @override
  _SettingsState createState()=> _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextStyle style = TextStyle(
      fontFamily: 'Expletus Sans regular', fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.purple[300],
      ),

      body: Column(
        children: <Widget>[
          SizedBox(
            height: 155.0,
            child: Container(
                child: Image.network("https://firebasestorage.googleapis.com/v0/b/kabukabu-8ab46.appspot.com/o/Assets%2F5-512.png?alt=media&token=0861a73e-d7b6-47a7-b98c-a4afae4bf0e8")
            ),
          ),
        ],
      ),
    );
  }
}