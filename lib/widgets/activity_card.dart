import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/activity.dart';
import '../styles/app_styles.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.activity, required this.onTap});
  final Activity activity;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('dd MMM yyyy - HH:mm');
    final String formattedDate = formatter.format(activity.date);

    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.run_circle_outlined,
                  size: 32,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      activity.type,
                      style: AppStyles.cardData,
                    ),
                    Text(formattedDate),
                  ],
                ),
              ),
              Text(
                "${activity.distance} km",
                style: AppStyles.cardData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
