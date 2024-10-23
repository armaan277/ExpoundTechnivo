import 'package:flutter/material.dart';
import 'package:new_task/header_section.dart';
import 'package:new_task/second_tabbar.dart';
import 'package:new_task/stage_history.dart';
import 'package:new_task/upcoming_overdue.dart';

void main() {
  runApp(const MyApp());
}

int _selectedIndex = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive CRM Layout',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CRMLayout(),
    );
  }
}

class CRMLayout extends StatefulWidget {
  const CRMLayout({super.key});

  @override
  _CRMLayoutState createState() => _CRMLayoutState();
}

class _CRMLayoutState extends State<CRMLayout> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff11334E),
        title: const Row(
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
            margin: const EdgeInsets.only(right: 15),
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: IconButton(
              icon: const Icon(
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
            icon: const Icon(Icons.settings, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon:
                const Icon(Icons.notifications, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon:
                const Icon(Icons.calendar_today, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          _buildVerticalDivider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: CircleAvatar(
              radius: 15,
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const HeaderSection(),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: SingleChildScrollView(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 40,
                                child: Container(
                                  height: 700,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey.shade400),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 20),
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
                                                const SizedBox(width: 5),
                                                const Text(
                                                  "Contacted",
                                                  style: TextStyle(
                                                      color: Colors.orange),
                                                ),
                                              ],
                                            ),
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.timelapse,
                                                  size: 15,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  "Pending Actions",
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
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
                                                        color: const Color(
                                                            0xffFFF9E6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 14.0,
                                                          vertical: 8,
                                                        ),
                                                        child: Text(
                                                          'Create Account',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffF98900),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 20),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffEDFFF0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 14.0,
                                                          vertical: 8,
                                                        ),
                                                        child: Text(
                                                          'Create Account',
                                                          style: TextStyle(
                                                            color: Colors.green,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 20),
                                            const Row(
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
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                            const Divider(
                                                thickness: 0.4,
                                                color: Colors.grey),
                                          ],
                                        ),
                                        const TabsSection(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Expanded(
                                flex: 50,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
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
                                    UpcomingOverdue(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
        color: const Color(0xff11334E),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: const Color(0xff728390),
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
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
  );
}

class TabsSection extends StatelessWidget {
  const TabsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5,
      initialIndex: 4,
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
          SizedBox(
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
  const MainContentArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
            ],
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}

class OtherContactsTab extends StatelessWidget {
  const OtherContactsTab({super.key});

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
                    const Text(
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
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Select Option'),
                        ),
                        items: const [
                          DropdownMenuItem(
                              value: 'Account 1',
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text('Account 1'),
                              )),
                          DropdownMenuItem(
                              value: 'Account 2',
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text('Account 2'),
                              )),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
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
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text('Select Option'),
                        ),
                        items: const [
                          DropdownMenuItem(
                              value: 'Contact 1',
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text('Contact 1'),
                              )),
                          DropdownMenuItem(
                              value: 'Contact 2',
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text('Contact 2'),
                              )),
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
                    const Text('Sales Head'),
                  ],
                ),
                const Text(
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
                    const Text('Sales Head'),
                  ],
                ),
                const Text(
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
      color: const Color(0xff11334E),
      borderRadius: BorderRadius.circular(4),
      border: Border.all(
        color: const Color(0xff728390),
        width: 2,
      ),
    ),
    child: Icon(icon, color: Colors.white),
  );
}
