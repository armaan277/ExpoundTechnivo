import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class StageHistoryTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Stage History',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(thickness: 0.4, color: Colors.grey),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'August 2024',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          _buildTimelineTile(
            '28/08',
            'Team | 09:00am',
            'Created Jiya Gopal',
          ),
          SizedBox(height: 10),
          _buildTimelineTile(
            '28/08',
            'Team | 10:00am',
            'Assigned to Aniruddh Naidu',
          ),
          SizedBox(height: 10),
          _buildTimelineTile(
            '28/08',
            'Event | 12:00pm',
            'Arrange a Call',
          ),
          SizedBox(height: 10),
          _buildTimelineTile(
            '28/08',
            'Lead Update | 04:00pm',
            'Marked as Contacted',
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildTimelineTile(String date, String time, String description) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      isFirst: date == '28/08' && time == 'Team | 09:00am', // First element
      isLast: description == 'Marked as Contacted', // Last element
      indicatorStyle: IndicatorStyle(
        width: 30,
        indicatorXY: 0.5,
        indicator: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xff11334E), width: 2),
          ),
          child: Text(''),
        ),
      ),
      afterLineStyle: LineStyle(
        thickness: 2,
        color: Colors.grey.shade400,
      ),
      beforeLineStyle: LineStyle(
        thickness: 2,
        color: Colors.grey.shade400,
      ),
      endChild: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Text(
              date,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
