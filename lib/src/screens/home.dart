import 'package:alnabali/src/model/trip_info.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl_browser.dart';
//import 'package:date_format/date_format.dart';

import 'package:alnabali/src/widgets/trip_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var testInfo = TripInfo(
      status: TripStatus.started,
      tripNo: 123455,
      company: CompanyInfo(
        companyName: 'MCDONALD\'S',
        tripName: 'McDonald\'s Morning Trip',
      ),
      busNo: '32-145489',
      passengers: 25,
      busLine: BusLineInfo(
        fromTime: DateTime(2022, 10, 8, 16, 0),
        toTime: DateTime(2022, 10, 10, 16, 30),
        courseName: 'KHALDA - ALNEYMAT ST.',
        cityName: 'AMMAN',
      ),
    );

    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: TripCard(
          info: testInfo,
          onPressed: () {},
        ),
      ),
    );
  }
}
