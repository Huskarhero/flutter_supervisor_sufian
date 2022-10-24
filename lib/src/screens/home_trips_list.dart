import 'package:alnabali/src/model/trip_info.dart';
import 'package:flutter/material.dart';

import 'package:alnabali/src/widgets/constants.dart';
import 'package:alnabali/src/widgets/buttons_tabbar.dart';
import 'package:alnabali/src/widgets/trip_card.dart';

enum TripsListType {
  todayTrips,
  pastTrips,
}

class TripsListView extends StatefulWidget {
  final TripsListType listType;
  final int selectedIndex;

  const TripsListView({
    Key? key,
    required this.listType,
    this.selectedIndex = 0,
  }) : super(key: key);

  @override
  State<TripsListView> createState() => _TripsListViewState();
}

class _TripsListViewState extends State<TripsListView> {
  String _getTabTextFromID(int id) {
    if (id == 100) {
      return 'All';
    } else {
      return kTripStatusStrings[id];
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    List<int> tabIDArray = [100, 0, 1, 2, 3, 4, 5];
    var tabCount = 7;
    if (widget.listType == TripsListType.pastTrips) {
      tabIDArray = [100, 2, 4, 5];
      tabCount = 4;
    }

    /// dummy codes for test
    var testStarted = TripInfo(
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
    var testPending = TripInfo(
      status: TripStatus.pending,
      tripNo: 123455,
      company: CompanyInfo(
        companyName: 'AMAZON',
        tripName: 'Amazon Morning Trip',
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
    var testAccepted = TripInfo(
      status: TripStatus.accepted,
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
    var testRejected = TripInfo(
      status: TripStatus.rejected,
      tripNo: 123455,
      company: CompanyInfo(
        companyName: 'AMAZON',
        tripName: 'Amazon Morning Trip',
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
    var testFinished = TripInfo(
      status: TripStatus.finished,
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
    var testCanceled = TripInfo(
      status: TripStatus.canceled,
      tripNo: 123455,
      company: CompanyInfo(
        companyName: 'AMAZON',
        tripName: 'Amazon Morning Trip',
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

    return DefaultTabController(
      length: tabCount,
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                height: 61 * SizeConfig.scaleY,
                child: Image.asset('assets/images/home_icon2.png'),
              ),
              ButtonsTabBar(
                backgroundColor: kColorPrimaryBlue,
                unselectedBackgroundColor: Colors.transparent,
                borderColor: kColorPrimaryBlue,
                unselectedBorderColor: const Color(0xFFB3B3B3),
                borderWidth: 1,
                radius: 100,
                labelStyle: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Colors.white,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Color(0xFFB3B3B3),
                ),
                tabs: tabIDArray
                    .map((t) => Tab(
                          text: _getTabTextFromID(t),
                        ))
                    .toList(),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                Column(children: [
                  TripCard(info: testStarted, onPressed: () {}),
                  const SizedBox(height: 20),
                  TripCard(info: testStarted, onPressed: () {}),
                ]),
                Center(
                  child: TripCard(info: testPending, onPressed: () {}),
                ),
                Center(
                  child: TripCard(info: testAccepted, onPressed: () {}),
                ),
                Center(
                  child: TripCard(info: testRejected, onPressed: () {}),
                ),
                Center(
                  child: TripCard(info: testStarted, onPressed: () {}),
                ),
                Center(
                  child: TripCard(info: testFinished, onPressed: () {}),
                ),
                Center(
                  child: TripCard(info: testCanceled, onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}