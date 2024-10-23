import 'package:flutter/material.dart';

class SecondTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey.shade400)),
      child: DefaultTabController(
        length: 4, // Number of tabs
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              TabBar(
                labelColor: Color(0xff11334E),
                unselectedLabelColor: Colors.grey,
                indicatorColor: Color(0xff11334E),
                tabs: [
                  Tab(text: 'Activity'),
                  Tab(text: 'Actionables'),
                  Badge(
                    label: Text('2'),
                    child: Tab(text: 'Tasks'),
                  ),
                  Tab(text: 'Note & File'),
                ],
              ),
              // Expanded(
              //   child: TabBarView(
              //     children: [
              //       Center(child: Text('Activity Content')),
              //       Center(child: Text('Actionables Content')),
              //       Center(child: Text('Tasks Content')),
              //       Center(child: Text('Note & File Content')),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        child: Row(
                          children: [
                            Container(
                              color: Colors.grey,
                              padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.call),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Log a Call',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        child: Row(
                          children: [
                            Container(
                              color: Color(0xffFFDAE1),
                              padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.chat_bubble_outline_outlined),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        child: Row(
                          children: [
                            Container(
                              color: Colors.grey,
                              padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.lightbulb_outline),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Event',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Subject',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Input Text',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 100),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Add People',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Input Text',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              DateTimePickerExample(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Description',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Input Text',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.add, size: 25),
                        Text(
                          'Add Team Member',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color(0xff11334E),
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DateTimePickerExample extends StatefulWidget {
  @override
  _DateTimePickerExampleState createState() => _DateTimePickerExampleState();
}

class _DateTimePickerExampleState extends State<DateTimePickerExample> {
  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = "${picked.month}/${picked.day}/${picked.year}";
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _timeController.text = "${picked.hour}:${picked.minute}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Date',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                controller: _dateController,
                decoration: InputDecoration(
                  hintText: 'MM/DD/YYYY',
                  suffixIcon: Icon(Icons.calendar_today),
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
                onTap: () => _selectDate(context),
              ),
            ],
          ),
        ),
        SizedBox(width: 100),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Time',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                controller: _timeController,
                decoration: InputDecoration(
                  hintText: 'HH:MM',
                  suffixIcon: Icon(Icons.access_time),
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
                onTap: () => _selectTime(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
