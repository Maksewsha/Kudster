import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kudster/data/models/event_full_model/event_full_model.dart';

import '../../../res/strings.dart';

class EventCard extends StatelessWidget {
  final EventFullInfoModel event;

  const EventCard({
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(12.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: Image(
                      image: NetworkImage(
                          "https://kudago.com/media/thumbs/xl/images/event/06/64/066481da9159952c0605e54ac0067739.jpg"),
                      width: 128,
                      height: 128,
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        event.title.toString().replaceFirst(
                            event.title.toString()[0],
                            event.title.toString()[0].toUpperCase()),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 4.0),
                      Text(event.description
                          .toString()
                          .replaceAll("<p>", "")
                          .replaceAll("</p>", ""),),
                    ],
                  ))
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text("${_readTimestamp(event.dates?.last.start as int)}"),
                      Text("-"),
                      Text("${_readTimestamp(event.dates?.last.end as int)}"),
                    ],
                  ),
                  Text(event.location?.slug as String),
                ],
              )
            ],
          ),
        ));
  }
}

String _readTimestamp(int timestamp) {
  var now = DateTime.now();
  var date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  var diff = date.difference(now);
  var time = "";
  if (diff.inSeconds <= 0 ||
      diff.inSeconds > 0 && diff.inMinutes == 0 ||
      diff.inMinutes > 0 && diff.inHours == 0 ||
      diff.inHours > 0 && diff.inDays == 0) {
    time = "${date.year}-${date.month}-${date.day}";
  } else {
    if (diff.inDays == 1) {
      time = diff.inDays.toString() + 'DAY AGO';
    } else {
      time = diff.inDays.toString() + 'DAYS AGO';
    }
  }
  return time;
}
