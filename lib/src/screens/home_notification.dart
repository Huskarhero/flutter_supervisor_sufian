import 'package:flutter/material.dart';

import 'package:alnabali/src/model/trip_info.dart';
import 'package:alnabali/src/widgets/constants.dart';
import 'package:alnabali/src/widgets/notification_card.dart';

class HomeNotificationPage extends StatefulWidget {
  const HomeNotificationPage({Key? key}) : super(key: key);

  @override
  State<HomeNotificationPage> createState() => _HomeNotificationPageState();
}

class _HomeNotificationPageState extends State<HomeNotificationPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    /// dummy codes for test
    final dummyInfos = [
      TripInfo(
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
      ),
      TripInfo(
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
      ),
      TripInfo(
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
      ),
      TripInfo(
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
      ),
      TripInfo(
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
      ),
      TripInfo(
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
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: 80,
          child: Image.asset('assets/images/home_icon.png'),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
              ),
            ),
            child: ListView.separated(
              padding: const EdgeInsets.only(top: 30),
              itemCount: dummyInfos.length,
              itemBuilder: (BuildContext context, int itemIdx) {
                return NotificationCard(
                  info: dummyInfos[itemIdx],
                  onPressed: () {},
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(),
            ),
          ),
        ),
      ],
    );
  }
}
