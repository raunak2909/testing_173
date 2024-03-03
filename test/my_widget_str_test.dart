import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_173/main.dart';

void main(){

  testWidgets("My Uppercase String Widget Test", (widgetTester) async{

    await widgetTester.pumpWidget(MyApp());

    /// finding your textField to enter
    var tf = find.byType(TextField);
    expect(tf, findsOneWidget);

    /// enter the value
    await widgetTester.enterText(tf, "Raman");

    /// finding your btn to tap
    var btn = find.byType(ElevatedButton);
    expect(btn, findsOneWidget);

    /// tapping the btn to generate the result
    await widgetTester.tap(btn);
    await widgetTester.pump();

    /// checking for expected result
    expect(find.text("RAMAN"), findsOneWidget);
    //expect(find.text("Raman"), findsNothing);


  });

}