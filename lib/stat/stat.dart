import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Stat extends StatefulWidget {
  const Stat({Key? key}) : super(key: key);

  @override
  _StatState createState() => _StatState();
}

class _StatState extends State<Stat> {
  DateTime now = DateTime.now();
  late DateTime startOfWeek;

  final List<charts.Series> seriesList = _createSampleData();

  static List<charts.Series<LinearMood, int>> _createSampleData() {
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

  @override
  void initState() {
    super.initState();
    startOfWeek = now.subtract(Duration(days: now.weekday - 1));
  }

  @override
  Widget build(BuildContext context) {
    String formattedStartOfWeek = DateFormat('MMM d').format(startOfWeek);
    String formattedToday = DateFormat('MMM d').format(now);

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 20.0),
                    child: Text(
                      'TRACK \nYOUR MOODS',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headlineMedium,
                        color: const Color.fromARGB(255, 70, 66, 68),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'lib/images/statMainpic.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        titleSpacing: 4.0,
        toolbarHeight: 130,
        toolbarOpacity: 0.9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              bottomLeft: Radius.circular(18)),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 134, 208, 203),
      ),
      backgroundColor: const Color.fromARGB(251, 241, 255, 252),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 204, 248, 245),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              now = now.subtract(const Duration(days: 7));
                              startOfWeek =
                                  startOfWeek.subtract(const Duration(days: 7));
                            });
                          },
                          child: const Icon(Icons.arrow_left),
                        ),
                        Text(
                          '$formattedStartOfWeek - $formattedToday',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              now = now.add(const Duration(days: 7));
                              startOfWeek =
                                  startOfWeek.add(const Duration(days: 7));
                            });
                          },
                          child: const Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: charts.LineChart(
                      seriesList as List<charts.Series<dynamic, num>>,
                      defaultRenderer: charts.LineRendererConfig(
                          includeArea: true, stacked: true),
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
                    ),
                  ),
                ],
              ),
            ),
            TableCalendar(
              calendarController: CalendarController(),
              initialCalendarFormat: CalendarFormat.week,
              availableCalendarFormats: {CalendarFormat.month: 'Month', CalendarFormat.week: 'Week'},
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                centerHeaderTitle: true,
                titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                leftChevronIcon: Icon(Icons.chevron_left),
                rightChevronIcon: Icon(Icons.chevron_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LinearMood {
  final int year;
  final int mood;

  LinearMood(this.year, this.mood);
}
