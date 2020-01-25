import 'package:flutter/material.dart';
import './footer.dart';

class LoginScreen extends StatelessWidget {
  final textfieldBorder =
      BorderSide(width: 16.0, color: Colors.lightBlue.shade50);
  final textfieldBorderRadius = BorderRadius.all(Radius.circular(4));
  Widget logo() => Icon(
        Icons.attach_money,
        size: 48.0,
      );

  Widget title() => Text(
        "Login",
        style: TextStyle(fontSize: 15.0),
      );

  Widget subTitle() => Text("Use Your Internet Banking Account",
      style: TextStyle(fontSize: 13.0));

  Widget verticalSpaceOf(double pixel) => SizedBox(
        height: pixel,
      );
  Widget horizontalSpaceOf(double pixel) => SizedBox(
        width: pixel,
      );
  Widget userIdTextField() => TextField(
        decoration: InputDecoration(
            labelText: "User Id",
            hintText: "Enter your user id",
            border: OutlineInputBorder(
              borderSide: textfieldBorder,
              borderRadius: textfieldBorderRadius,
            )),
      );
  Widget passwordTextField() => null;

  //F => Forgot
  //R => Register
  //C => Continue
  //L => Login
  Widget rowFRCL() {
    final forgot = ButtonTheme(
      minWidth: 0.0,
      child: FlatButton(
        child: Text("Forgot ?"),
        padding: EdgeInsets.only(right: 8.0),
        onPressed: () {
          print("Forgot ?");
        },
      ),
    );

    final register = ButtonTheme(
      child: FlatButton(
        child: Text("Register"),
        onPressed: () {
          print("Register");
        },
      ),
    );

    final loginAndContinue = FlatButton(
      color: Colors.indigo,
      child: Text("Continue"),
      onPressed: () {
        print("Continue");
      },
    );

    return Row(
      children: <Widget>[
        forgot,
        Spacer(),
        register,
        horizontalSpaceOf(8.0),
        loginAndContinue
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // color: Colors.white,
        margin: EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 14.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            logo(),
            title(),
            verticalSpaceOf(8.0),
            subTitle(),
            Spacer(),
            userIdTextField(),
            verticalSpaceOf(8.0),
            rowFRCL(),
            Spacer(
              flex: 2,
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
