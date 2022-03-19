import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kudster/data/models/event_full_model/event_full_model.dart';
import 'package:kudster/data/repos/network_repo.dart';
import 'package:kudster/presentation/res/strings.dart';
import 'package:kudster/presentation/widgets/elements/MyAppBar.dart';
import 'package:kudster/presentation/widgets/elements/cards/event_card.dart';
import 'package:kudster/presentation/widgets/elements/nav_drawer.dart';

class MainRoot extends StatelessWidget {

  const MainRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: EventsList(),
      bottomNavigationBar: NavDrawer(),
    );
  }
}

class EventsList extends StatefulWidget {
  EventsList({Key? key}) : super(key: key);

  @override
  State<EventsList> createState() => _EventsListState();
}

class _EventsListState extends State<EventsList> {

  List<EventFullInfoModel> eventsList = [];

  void getEventsFromApi() async {
    NetworkRepository.getEvents().then((value) {
      setState(() {
        var list = jsonDecode(value.body);
        eventsList.add(EventFullInfoModel.fromJson(list));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getEventsFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: eventsList.length,
            itemBuilder: (context, index) {
              return EventCard(event: eventsList.first);
            }
        ),
      ),
    );
  }
}