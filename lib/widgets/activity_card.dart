import 'package:fitness_time/styles/app_styles.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.icon,
    required this.activityType,
    required this.value,
  });

  final IconData icon;
  final String activityType;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: AppStyles.heliotrope,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(icon),
            Text(activityType),
            Text(
              value,
              style: AppStyles.cardData,
            ),
          ],
        ),
      ),
    );
  }
}
