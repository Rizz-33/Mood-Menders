import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class LinearMood {
  final int year;
  final int mood;

  LinearMood(this.year, this.mood);
}

List<charts.Series<LinearMood, int>> _createSampleData() {
  final data = [
    LinearMood(0, 5),
    LinearMood(1, 25),
    LinearMood(2, 100),
    LinearMood(3, 75),
    LinearMood(4, 50),
    LinearMood(5, 85),
    LinearMood(6, 40),
  ];

  return [
    charts.Series<LinearMood, int>(
      id: 'Mood',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      areaColorFn: (_, __) =>
          charts.MaterialPalette.blue.shadeDefault.lighter,
      domainFn: (LinearMood mood, _) => mood.year,
      measureFn: (LinearMood mood, _) => mood.mood,
      data: data,
    )
  ];
}

class MoodChart extends StatelessWidget {
  final List<charts.Series> seriesList = _createSampleData();

  MoodChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(
      seriesList as List<charts.Series<dynamic, num>>,
      defaultRenderer: charts.LineRendererConfig(includeArea: true, stacked: true),
      primaryMeasureAxis: const charts.NumericAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
      domainAxis: charts.NumericAxisSpec(
        tickProviderSpec: charts.StaticNumericTickProviderSpec(
          List.generate(7, (index) {
            return charts.TickSpec(
              index,
              label: ['S', 'M', 'T', 'W', 'T', 'F', 'S'][index],
              style: const charts.TextStyleSpec(
                fontSize: 13,
                color: charts.MaterialPalette.black,
              ),
            );
          }),
        ),
        renderSpec: const charts.GridlineRendererSpec(
          labelStyle: charts.TextStyleSpec(
            fontSize: 0,
            color: charts.MaterialPalette.transparent,
          ),
          lineStyle: charts.LineStyleSpec(
            color: charts.MaterialPalette.transparent,
          ),
        ),
      ),
    );
  }
}