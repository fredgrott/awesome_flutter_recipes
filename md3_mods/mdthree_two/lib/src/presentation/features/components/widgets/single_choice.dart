// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original part of Flutter Samples Experimental
// Material 3 Demo under BSD License Copyright 2021
// Flutter Team.


//
// ignore: prefer-correct-identifier-length
import 'package:flutter/material.dart';

enum Calendar { day, week, month, year }

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Calendar calendarView = Calendar.day;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      segments: const <ButtonSegment<Calendar>>[
        ButtonSegment<Calendar>(
          value: Calendar.day,
          icon: Icon(Icons.calendar_view_day),
          label: Text('Day'),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.week,
          icon: Icon(Icons.calendar_view_week),
          label: Text('Week'),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.month,
          icon: Icon(Icons.calendar_view_month),
          label: Text('Month'),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.year,
          icon: Icon(Icons.calendar_today),
          label: Text('Year'),
        ),
      ],
      selected: <Calendar>{calendarView},
      //
      // ignore: prefer-extracting-callbacks
      onSelectionChanged: (newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          calendarView = newSelection.first;
        });
      },
    );
  }
}
