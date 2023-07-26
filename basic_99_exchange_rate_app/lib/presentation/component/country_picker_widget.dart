import 'package:flutter/cupertino.dart';

// final countries = [
//   'Country 1',
//   'Country 2',
//   'Country 3',
//   'Country 4',
//   'Country 5',
// ];

class CountryPickerWidget extends StatelessWidget {
  const CountryPickerWidget({Key? key, required this.countries})
      : super(key: key);

  final List<String> countries;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
  }
}
