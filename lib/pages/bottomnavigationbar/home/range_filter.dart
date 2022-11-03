import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RangeFilter extends StatefulWidget {
  @override
  _RangeFilterState createState() => _RangeFilterState();
}

/// This is the private State class that goes with RangeFilter.
class _RangeFilterState extends State<RangeFilter> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _currentRangeValues,
      min: 0,
      max: 100,
      divisions: 5,
      activeColor: HexColor("#CC9D76"),
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }
}
