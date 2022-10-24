import 'package:flutter/material.dart';

import 'package:alnabali/src/widgets/constants.dart';
import 'package:alnabali/src/screens/home_trips_list.dart';

class HomeTripsPage extends StatefulWidget {
  const HomeTripsPage({Key? key}) : super(key: key);

  @override
  State<HomeTripsPage> createState() => _HomeTripsPageState();
}

class _HomeTripsPageState extends State<HomeTripsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final primaryTabBarHMargin = 150 * SizeConfig.scaleX;

    return Column(
      children: [
        Container(
          height: 130 * SizeConfig.scaleY,
          margin: EdgeInsets.only(
            left: primaryTabBarHMargin,
            right: primaryTabBarHMargin,
            top: 50 * SizeConfig.scaleY,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFB3B3B3),
            borderRadius: BorderRadius.circular(100),
          ),
          child: TabBar(
            controller: _tabController,
            indicator: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: kColorPrimaryBlue,
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            labelStyle: const TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            tabs: const [
              Tab(text: 'TODAY TRIPS'),
              Tab(text: 'PAST TRIPS'),
            ],
          ),
        ),
        // tab bar view here
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              // TODAY TRIPS view
              TripsListView(listType: TripsListType.todayTrips),

              // PAST TRIPS view
              TripsListView(listType: TripsListType.pastTrips),
            ],
          ),
        ),
      ],
    );
  }
}
