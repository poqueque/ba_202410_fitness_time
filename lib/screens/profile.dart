import 'package:fitness_time/styles/app_styles.dart';
import 'package:fitness_time/widgets/activity_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                "https://randomuser.me/api/portraits/women/44.jpg",
              ),
            ),
          ),
          const Text(
            'Antonia Font',
            style: AppStyles.bigText,
          ),
          const Text(
            'registered 20 April 2023',
            style: AppStyles.smallText,
          ),
          AppStyles.bigSpace,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActivityCard(
                icon: Icons.access_alarm,
                activityType: "Time",
                value: "2h 45",
              ),
              ActivityCard(
                icon: Icons.place,
                activityType: "Km",
                value: "212,4",
              ),
              ActivityCard(
                icon: Icons.directions_run,
                activityType: "Activities",
                value: "42",
              ),
            ],
          ),
          AppStyles.smallSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Height"),
              Slider(
                min: 100,
                max: 250,
                value: 150,
                activeColor: AppStyles.heliotrope,
                onChanged: (value) {},
              ),
              const Text("150 cm"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Weight"),
              Slider(
                min: 40,
                max: 100,
                value: 55,
                activeColor: AppStyles.heliotrope,
                onChanged: (value) {},
              ),
              const Text("55 kg"),
            ],
          )
        ],
      ),
    );
  }
}
