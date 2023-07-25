import 'package:flutter/cupertino.dart';

// final countries = [
//   'Country 1',
//   'Country 2',
//   'Country 3',
//   'Country 4',
//   'Country 5',
// ];

Widget buildCountryPicker(List<String> countries) => SizedBox(
      height: 350,
      child: CupertinoPicker(
        onSelectedItemChanged: (int index) {},
        itemExtent: 64,
        children: countries
            .map(
              (con) => Center(child: Text(con)),
            )
            .toList(),
      ),
    );
