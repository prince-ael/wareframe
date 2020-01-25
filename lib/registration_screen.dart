import 'package:flutter/material.dart';
import './footer.dart';

class RegistrationScreen extends StatelessWidget {
  final textfieldBorder =
      BorderSide(width: 16.0, color: Colors.lightBlue.shade50);
  final textfieldBorderRadius = BorderRadius.all(Radius.circular(4));

  Widget verticalSpaceOf(double pixel) => SizedBox(
        height: pixel,
      );

  Widget horizontalSpaceOf(double pixel) => SizedBox(
        width: pixel,
      );

  Widget customerIdInput() => TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: "Customer Id",
            hintText: "Enter your customer id",
            border: OutlineInputBorder(
              borderSide: textfieldBorder,
              borderRadius: textfieldBorderRadius,
            )),
      );

  Widget accountNumberInput() => TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: "Account Number",
            hintText: "Enter account number",
            border: OutlineInputBorder(
              borderSide: textfieldBorder,
              borderRadius: textfieldBorderRadius,
            )),
      );

  Widget branchInput() => TextField(
        enabled: false,
        decoration: InputDecoration(
            hintText: "Select or search branch",
            suffixIcon: Icon(Icons.arrow_drop_down),
            border: OutlineInputBorder(
              borderSide: textfieldBorder,
              borderRadius: textfieldBorderRadius,
            )),
      );

  Widget dobInput() => TextField(
        enabled: false,
        decoration: InputDecoration(
            hintText: "Date of Birth (dd-mm--yyyy)",
            suffixIcon: Icon(Icons.calendar_today),
            border: OutlineInputBorder(
              borderSide: textfieldBorder,
              borderRadius: textfieldBorderRadius,
            )),
      );

  Widget mobileNumberInput() => TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            labelText: "Mobile Number",
            hintText: "Enter mobile number",
            border: OutlineInputBorder(
              borderSide: textfieldBorder,
              borderRadius: textfieldBorderRadius,
            )),
      );

  Widget termsAndConditions() {
    final checkBox = Checkbox(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      activeColor: Color(0xff527fc0),
      checkColor: Colors.white,
      value: true,
      onChanged: (isChecked) {
        print(isChecked);
      },
    );

    final text = Text("I agree with terms and conditions");

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[checkBox, text],
    );
  }

  @override
  Widget build(BuildContext context) {
    final formSpace = 16.0;
    return SafeArea(
      child: Container(
        margin: EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 14.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            customerIdInput(),
            verticalSpaceOf(formSpace),
            accountNumberInput(),
            verticalSpaceOf(formSpace),
            branchInput(),
            verticalSpaceOf(formSpace),
            dobInput(),
            verticalSpaceOf(formSpace),
            mobileNumberInput(),
            verticalSpaceOf(8.0),
            termsAndConditions(),
            Spacer(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
