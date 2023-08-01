import 'package:flutter/cupertino.dart';

Widget buildCountryPicker(
  List<String> countries,
  Function(String country) callback,
) {
  return SizedBox(
    height: 350,
    child: CupertinoPicker(
      onSelectedItemChanged: (int index) {
        callback(countries[index]);
      },
      itemExtent: 64,
      children: countries
          .map(
            (con) => Center(child: Text(con)),
          )
          .toList(),
    ),
  );
}
