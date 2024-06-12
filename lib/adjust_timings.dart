import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:http/http.dart' as http;
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tzdata;

class AdjustTime extends StatefulWidget {
  final String fajr;
  final String sunrise;
  final String dhuhr;
  final String asr;
  final String sunset;
  final String maghrib;
  final String isha;

  const AdjustTime({
    Key? key,
    required this.fajr,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.sunset,
    required this.maghrib,
    required this.isha,
  }) : super(key: key);

  @override
  _AdjustTimeState createState() => _AdjustTimeState();
}

class _AdjustTimeState extends State<AdjustTime> {
  late TimeOfDay _fajrTime;
  late TimeOfDay _sunriseTime;
  late TimeOfDay _dhuhrTime;
  late TimeOfDay _asrTime;
  late TimeOfDay _sunsetTime;
  late TimeOfDay _maghribTime;
  late TimeOfDay _ishaTime;
  late DateTime _selectedDay;
  late DateTime _focusedDay;
  late CalendarFormat _calendarFormat;
    Map<String, String> prayerTimings = {};

  
    @override
  void initState() {
    super.initState();
    _fajrTime = _parseTimeOfDay(widget.fajr);
    _sunriseTime = _parseTimeOfDay(widget.sunrise);
    _dhuhrTime = _parseTimeOfDay(widget.dhuhr);
    _asrTime = _parseTimeOfDay(widget.asr);
    _sunsetTime = _parseTimeOfDay(widget.sunset);
    _maghribTime = _parseTimeOfDay(widget.maghrib);
    _ishaTime = _parseTimeOfDay(widget.isha);

    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
    _calendarFormat = CalendarFormat.month;

    _fetchPrayerTimings();
  }


Future<void> _fetchPrayerTimings() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      // getCityNameFromPosition(position);

      double latitude = position.latitude;
      double longitude = position.longitude;

      // DateTime currentDate = DateTime.now();

      String formattedDate =
          '${_selectedDay.year}-${_selectedDay.month}-${_selectedDay.day}';

      final response = await http.get(Uri.parse(
          'https://api.aladhan.com/v1/timings/$formattedDate?latitude=$latitude&longitude=$longitude&method=2'));
          
          if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data['data'] != null && data['data']['timings'] != null) {
          setState(() {
            prayerTimings =
                Map<String, String>.from(data['data']['timings']);
                _updatePrayerTimings();
          });
        }
      } else {
        throw Exception('Failed to load prayer timings');
      }
    } catch (e) {
      print('Error fetching prayer timings: $e');
    }
  }


  TimeOfDay _parseTimeOfDay(String timeString) {
    final List<String> parts = timeString.split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  Future<void> _selectTime(TimeOfDay initialTime, Function(TimeOfDay) onTimeSelected) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (picked != null) {
      setState(() {
        onTimeSelected(picked);
      });
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 241, 200),
      appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 198, 241, 200),
        title: Text('ضبط الوقت',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.green,),onPressed: ()
        {
          Navigator.pop(context);
        },),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SizedBox(height: 15,),

              TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                     _fetchPrayerTimings();
                  });
                },
                calendarFormat: _calendarFormat,
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onPageChanged: (focusedDay) {
                  setState(() {
                    _focusedDay = focusedDay;
                  });
                },
              ),

              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 16.0),
                child: ListTile(
                  title: Text('الإعداد على أساس الموقع',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),
                  trailing: Switch(
                    activeColor: Colors.green[900],
                    value: true,
                    onChanged: (bool value) {

                    },
                  ),
                ),
              ),
              PrayerTimingCard(
                title: 'الفجر',
                timing: _fajrTime.format(context),
                icon: Icons.nightlight_round,
                onPressed: () => _selectTime(_fajrTime, (time) => _fajrTime = time),
              ),
              PrayerTimingCard(
                title: 'شروق الشمس',
                timing: _sunriseTime.format(context),
                icon: Icons.wb_sunny_rounded,
                onPressed: () => _selectTime(_sunriseTime, (time) => _sunriseTime = time),
              ),
              PrayerTimingCard(
                title: 'الظهر',
                timing: _dhuhrTime.format(context),
                icon: Icons.brightness_5_rounded,
                onPressed: () => _selectTime(_dhuhrTime, (time) => _dhuhrTime = time),
              ),
              PrayerTimingCard(
                title: 'العصر',
                timing: _asrTime.format(context),
                icon: Icons.wb_cloudy_rounded,
                onPressed: () => _selectTime(_asrTime, (time) => _asrTime = time),
              ),
              PrayerTimingCard(
                title: 'غروب',
                timing: _sunsetTime.format(context),
                icon: Icons.brightness_4_rounded,
                onPressed: () => _selectTime(_sunsetTime, (time) => _sunsetTime = time),
              ),
              PrayerTimingCard(
                title: 'المغرب',
                timing: _maghribTime.format(context),
                icon: Icons.brightness_4_rounded,
                onPressed: () => _selectTime(_maghribTime, (time) => _maghribTime = time),
              ),
              PrayerTimingCard(
                title: 'العشاء',
                timing: _ishaTime.format(context),
                icon: Icons.nightlight_round,
                onPressed: () => _selectTime(_ishaTime, (time) => _ishaTime = time),
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
  
  void _updatePrayerTimings() {
     _fajrTime = _parseTimeOfDay(prayerTimings['Fajr'] ?? widget.fajr);
    _sunriseTime = _parseTimeOfDay(prayerTimings['Sunrise'] ?? widget.sunrise);
    _dhuhrTime = _parseTimeOfDay(prayerTimings['Dhuhr'] ?? widget.dhuhr);
    _asrTime = _parseTimeOfDay(prayerTimings['Asr'] ?? widget.asr);
    _sunsetTime = _parseTimeOfDay(prayerTimings['Sunset'] ?? widget.sunset);
    _maghribTime = _parseTimeOfDay(prayerTimings['Maghrib'] ?? widget.maghrib);
    _ishaTime = _parseTimeOfDay(prayerTimings['Isha'] ?? widget.isha);
  }
}

class PrayerTimingCard extends StatelessWidget {
  final String title;
  final String timing;
  final IconData icon;
  final VoidCallback onPressed;

  PrayerTimingCard({
    required this.title,
    required this.timing,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8, 
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      icon,
                      size: 36,
                      color: Colors.green,
                    ),
                    SizedBox(width: 15),
                    Text(
                      '$title: ',
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green[900]),
                    ),
                    Text(timing,style: TextStyle(color: Colors.green[900])),
                  ],
                ),
                IconButton(
                  onPressed: onPressed,
                  icon: Icon(Icons.edit),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
