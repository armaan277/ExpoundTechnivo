import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

class CRMLayout extends StatefulWidget {
  @override
  _CRMLayoutState createState() => _CRMLayoutState();
}

class _CRMLayoutState extends State<CRMLayout> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
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
          if (screenSize.width > 800)
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
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
                  _buildDestination(Icons.pin, 'Dashboard', 0),
                  _buildDestination(Icons.shopping_bag, 'Dashboard', 0),
                  _buildDestination(Icons.build_outlined, 'Dashboard', 0),
                  _buildDestination(Icons.person, 'Dashboard', 0),
                  _buildDestination(Icons.graphic_eq, 'Dashboard', 0),

                  // NavigationRailDestination(
                  //   icon: Icon(Icons.dashboard),
                  //   label: Text('Dashboard'),
                  // ),
                  // NavigationRailDestination(
                  //   icon: Icon(Icons.people),
                  //   label: Text('Leads'),
                  // ),
                  // NavigationRailDestination(
                  //   icon: Icon(Icons.account_circle),
                  //   label: Text('Accounts'),
                  // ),
                  // NavigationRailDestination(
                  //   icon: Icon(Icons.analytics),
                  //   label: Text('Analytics'),
                  // ),
                ],
              ),
            ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderSection(),
                    SizedBox(height: 20),
                    TabsSection(),
                    SizedBox(height: 20),
                    MainContentArea(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Dashboard / Load / LE-010071"),
            SizedBox(height: 10),
            Text(
              'LE-010071',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 8,
              children: [
                Chip(label: Text('New')),
                Chip(label: Text('Contacted')),
                Chip(label: Text('Nurturing')),
                Chip(label: Text('Qualified')),
                Chip(label: Text('Unqualified')),
              ],
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Mark as Converted'),
        ),
      ],
    );
  }
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
              Text(
                'Activity',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ActivityActions(),
            ],
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          flex: 3,
          child: StageHistorySection(),
        ),
      ],
    );
  }
}

class ActivityActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Log a Call'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Email'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Event'),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: 'Subject',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            labelText: 'Due Date',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            labelText: 'Description',
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

class StageHistorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Stage History',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.timeline),
            title: Text('Team | 09:00am'),
            subtitle: Text('Created Jiya Gopal'),
          ),
          ListTile(
            leading: Icon(Icons.timeline),
            title: Text('Team | 10:00am'),
            subtitle: Text('Assigned to Aniruddh Naidu'),
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Event | 12:00pm'),
            subtitle: Text('Arrange a Call'),
          ),
          ListTile(
            leading: Icon(Icons.update),
            title: Text('Lead Update | 04:00pm'),
            subtitle: Text('Marked as Contacted'),
          ),
        ],
      ),
    );
  }
}

class OtherContactsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField(
          decoration: InputDecoration(labelText: 'Account'),
          items: [
            DropdownMenuItem(child: Text('Account 1'), value: 'Account 1'),
            DropdownMenuItem(child: Text('Account 2'), value: 'Account 2'),
          ],
          onChanged: (value) {},
        ),
        SizedBox(height: 10),
        DropdownButtonFormField(
          decoration: InputDecoration(labelText: 'Contact'),
          items: [
            DropdownMenuItem(child: Text('Contact 1'), value: 'Contact 1'),
            DropdownMenuItem(child: Text('Contact 2'), value: 'Contact 2'),
          ],
          onChanged: (value) {},
        ),
      ],
    );
  }
}

Widget _buildVerticalDivider() {
  return Container(
    height: 34, // Adjust the height based on the AppBar height
    width: 1, // Width of the divider line
    color: Colors.grey[400], // Color of the divider line
    margin: EdgeInsets.symmetric(horizontal: 8.0), // Space around the divider
  );
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
      borderRadius: BorderRadius.circular(4), // Square-like border
      border: Border.all(
        color: Color(0xff728390), // Border color
        width: 2,
      ),
    ),
    child: Icon(icon, color: Colors.white),
  );
}
