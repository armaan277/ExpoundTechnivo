import 'package:flutter/material.dart';
import 'package:new_task/header_section.dart';
import 'package:new_task/second_tabbar.dart';
import 'package:new_task/stage_history.dart';
import 'package:new_task/widgets/custom_button1.dart';

void main() {
  runApp(MyApp());
}

int _selectedIndex = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive CRM Layout',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CRMLayout(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('TabBar Example'),
//         ),
//         body: StageHistoryTimeline(),
//       ),
//     );
//   }
// }

class CRMLayout extends StatefulWidget {
  @override
  _CRMLayoutState createState() => _CRMLayoutState();
}

class _CRMLayoutState extends State<CRMLayout> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff11334E),
        title: Row(
          children: [
            Icon(
              Icons.apps,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Test',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: IconButton(
              icon: Icon(
                Icons.search,
                size: 20,
                color: Color(0xff11334E),
              ),
              onPressed: () {},
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              splashRadius: 20,
            ),
          ),
          _buildVerticalDivider(),
          IconButton(
            icon: Icon(Icons.settings, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.calendar_today, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          _buildVerticalDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CircleAvatar(
              radius: 15,
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          // HeaderSection(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.all,
              destinations: [
                _buildDestination(Icons.dashboard, 'Dashboard', 0),
                _buildDestination(Icons.pin, 'Pin', 1),
                _buildDestination(Icons.shopping_bag, 'Bag', 2),
                _buildDestination(Icons.build_outlined, 'Tools', 3),
                _buildDestination(Icons.person, 'Profile', 4),
                _buildDestination(Icons.graphic_eq, 'Graph', 5),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 15,
                                        color: Colors.orange[900],
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Contacted",
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.timelapse,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Pending Actions",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Mamta Naik',
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffFFF9E6),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 14.0,
                                                vertical: 8,
                                              ),
                                              child: Text(
                                                'Create Account',
                                                style: TextStyle(
                                                  color: Color(0xffF98900),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffEDFFF0),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 14.0,
                                                vertical: 8,
                                              ),
                                              child: Text(
                                                'Create Account',
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 12,
                                        child: Icon(
                                          Icons.person,
                                          size: 15,
                                          color: Colors.purple,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        "Aniruddin Naidu",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Divider(thickness: 0.4, color: Colors.grey),
                                ],
                              ),
                              TabsSection(),

                              // SizedBox(height: 20),
                              // MainContentArea(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 30,
                      child: SecondTabbar(),
                    ),
                    Expanded(
                      flex: 20,
                      child: StageHistoryTimeline(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  NavigationRailDestination _buildDestination(
      IconData icon, String label, int index) {
    return NavigationRailDestination(
      icon: _selectedIndex == index
          ? _buildSelectedIcon(icon)
          : Icon(icon, color: Colors.grey),
      selectedIcon: _buildSelectedIcon(icon),
      label: Text(label),
    );
  }

  Widget _buildSelectedIcon(IconData icon) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xff11334E),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Color(0xff728390),
          width: 2,
        ),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}

Widget _buildVerticalDivider() {
  return Container(
    height: 34,
    width: 1,
    color: Colors.grey[400],
    margin: EdgeInsets.symmetric(horizontal: 8.0),
  );
}

class TabsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Basic Details'),
              Tab(text: 'Account Details'),
              Tab(text: 'Lead Details'),
              Tab(text: 'Team'),
              Tab(text: 'Other Contacts'),
            ],
          ),
          Container(
            height: 300,
            child: TabBarView(
              children: [
                Center(child: Text('Basic Details Content')),
                Center(child: Text('Account Details Content')),
                Center(child: Text('Lead Details Content')),
                Center(child: Text('Team Content')),
                OtherContactsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MainContentArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //   'Activity',
              //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              // ),
              SizedBox(height: 10),
              // ActivityActions(),
            ],
          ),
        ),
        SizedBox(width: 20),

        // Expanded(
        //   flex: 3,
        //   child: StageHistorySection(),
        // ),
      ],
    );
  }
}

// class ActivityActions extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Expanded(
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Log a Call'),
//               ),
//             ),
//             SizedBox(width: 10),
//             Expanded(
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Email'),
//               ),
//             ),
//             SizedBox(width: 10),
//             Expanded(
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Event'),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 20),
//         TextField(
//           decoration: InputDecoration(
//             labelText: 'Subject',
//             border: OutlineInputBorder(),
//           ),
//         ),
//         SizedBox(height: 10),
//         TextField(
//           decoration: InputDecoration(
//             labelText: 'Due Date',
//             border: OutlineInputBorder(),
//           ),
//         ),
//         SizedBox(height: 10),
//         TextField(
//           decoration: InputDecoration(
//             labelText: 'Description',
//             border: OutlineInputBorder(),
//           ),
//         ),
//       ],
//     );
//   }
// }

class OtherContactsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: DropdownButtonFormField(
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Select Option'),
                        ),
                        items: [
                          DropdownMenuItem(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Account 1'),
                              ),
                              value: 'Account 1'),
                          DropdownMenuItem(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Account 2'),
                              ),
                              value: 'Account 2'),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: DropdownButtonFormField(
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text('Select Option'),
                        ),
                        items: [
                          DropdownMenuItem(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Contact 1'),
                              ),
                              value: 'Contact 1'),
                          DropdownMenuItem(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Contact 2'),
                              ),
                              value: 'Contact 2'),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pranab Biyani',
                      style: TextStyle(color: Colors.blue[400]),
                    ),
                    Text('Sales Head'),
                  ],
                ),
                Text(
                  'Associate Vp',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nayan Johal',
                      style: TextStyle(color: Colors.blue[400]),
                    ),
                    Text('Sales Head'),
                  ],
                ),
                Text(
                  'Associate Vp',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

NavigationRailDestination _buildDestination(
    IconData icon, String label, int index) {
  return NavigationRailDestination(
    icon: _selectedIndex == index
        ? _buildSelectedIcon(icon)
        : Icon(icon, color: Colors.grey),
    label: Text(label),
  );
}

Widget _buildSelectedIcon(IconData icon) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: Color(0xff11334E),
      borderRadius: BorderRadius.circular(4),
      border: Border.all(
        color: Color(0xff728390),
        width: 2,
      ),
    ),
    child: Icon(icon, color: Colors.white),
  );
}
