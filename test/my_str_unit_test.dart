import 'package:flutter_test/flutter_test.dart';
import 'package:testing_173/home_page.dart';

void main(){

  test("Uppercase String Unit", (){

    var result = toUpperCaseString("Rajeev");
    expect(result, "RAJEEV");

  });

  test("Uppercase String Unit", (){

    var result = toUpperCaseString("Raghvendra");
    expect(result, "RAGHVENDRA");

  });

}