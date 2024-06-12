import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PrayerTimingsPage extends StatefulWidget {
  @override
  _PrayerTimingsPageState createState() => _PrayerTimingsPageState();
}

class _PrayerTimingsPageState extends State<PrayerTimingsPage> {
  Map<String, String> prayerTimings = {};

  Future<void> fetchPrayerTimings() async {
    final response = await http.get(
        Uri.parse('https://api.aladhan.com/v1/timingsByCity/15-04-2024?city=Calicut&country=India&method=8'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['data'] != null && data['data']['timings'] != null) {
        setState(() {
          prayerTimings = Map<String, String>.from(data['data']['timings']);
        });
      }
    } else {
      throw Exception('Failed to load prayer timings');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPrayerTimings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prayer Timings'),
      ),
      body: Center(
        child: prayerTimings.isNotEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrayerTimingTile(title: 'Fajr', timing: prayerTimings['Fajr']),
                  PrayerTimingTile(title: 'Sunrise', timing: prayerTimings['Sunrise']),
                  PrayerTimingTile(title: 'Dhuhr', timing: prayerTimings['Dhuhr']),
                  PrayerTimingTile(title: 'Asr', timing: prayerTimings['Asr']),
                  PrayerTimingTile(title: 'Sunset', timing: prayerTimings['Sunset']),
                  PrayerTimingTile(title: 'Maghrib', timing: prayerTimings['Maghrib']),
                  PrayerTimingTile(title: 'Isha', timing: prayerTimings['Isha']),
                ],
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}

class PrayerTimingTile extends StatelessWidget {
  final String title;
  final String? timing;

  PrayerTimingTile({required this.title, required this.timing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            '$title: ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(timing ?? 'Not Available'), // Use a default value if timing is null
        ],
      ),
    );
  }
}
