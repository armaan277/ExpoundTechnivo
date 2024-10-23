import 'package:flutter/material.dart';
import 'package:new_task/widgets/custom_button1.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Dashboard / Load / LE-010071"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'LE-010071',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.add_box, size: 28.0, color: Colors.grey),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child:
                        Icon(Icons.person_add, size: 28.0, color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child:
                        Icon(Icons.view_list, size: 28.0, color: Colors.grey),
                  ),
                  Icon(Icons.refresh, size: 28.0, color: Colors.grey),
                ],
              ),
            ],
          ),
          const Divider(thickness: 0.4, color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Wrap(
                spacing: 15,
                children: [
                  CustomButton1(title: 'New'),
                  CustomButton1(title: 'Contacted'),
                  CustomButton1(title: 'Nurturing'),
                  CustomButton1(title: 'Qualified'),
                  CustomButton1(title: 'Unqualified'),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color(0xff11334E),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.check, size: 16.0, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Mark as Converted',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(thickness: 0.4, color: Colors.grey),
        ],
      ),
    );
  }
}
