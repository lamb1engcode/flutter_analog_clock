import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'clock.dart';
import 'country_card.dart';
import 'time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  final DateTime dateTime;
  Body({this.dateTime});
  @override
  Widget build(BuildContext context) {
    DateFormat format = DateFormat('hh:mm');

    return Container(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Ho Chi Minh, Viet Nam",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(dateTime: dateTime),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "UTC -5 | EST",
                    iconSrc: "assets/icons/Liberty.svg",
                    time: format.format(
                      DateTime.now().subtract(
                        Duration(hours: 11),
                      ),
                    ),
                    period: "PM",
                  ),
                  CountryCard(
                    country: "Sydney, AU",
                    timeZone: "UTC +10 | AEST",
                    iconSrc: "assets/icons/Sydney.svg",
                    time: format.format(
                      DateTime.now().add(
                        Duration(hours: 3),
                      ),
                    ),
                    period: "AM",
                  ),
                  CountryCard(
                    country: "HongKong, China",
                    timeZone: "UTC +8 | EA",
                    iconSrc: "assets/icons/Sydney.svg",
                    time: format.format(
                      DateTime.now().add(
                        Duration(hours: 1),
                      ),
                    ),
                    period: "AM",
                  ),
                  SizedBox(width: 12.0),
                ],
              ),
            ),
            SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}
