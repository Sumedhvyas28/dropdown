import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedDropDownLocation;

  final List<String> _locationDropDownItems = [
    'House',
    'Appartment Complex',
    'Business',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
              ),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.blue, size: 15),

                  SizedBox(width: 110),
                  Text(
                    'Assignment',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Task',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedDropDownLocation,
                    isExpanded: true,
                    hint: Text('Location Type'),

                    items:
                        _locationDropDownItems.map((location) {
                          return DropdownMenuItem(
                            value: location,
                            child: Text(location),
                          );
                        }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedDropDownLocation = value;
                      });
                    },
                  ),
                ),
              ),
            ),

            // DropdownButtonFormField<String>(
            //   value: _selectedDropDownLocation,
            //   items:
            //       _locationDropDownItems.map((location) {
            //         return DropdownMenuItem(
            //           value: location,
            //           child: Text(location),
            //         );
            //       }).toList(),
            //   onChanged: (value) {
            //     setState(() {
            //       _selectedDropDownLocation = value;
            //     });
            //   },
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //     contentPadding: EdgeInsets.symmetric(horizontal: 16),
            //   ),
            // ),
            SizedBox(height: 20),

            ClipRRect(child: Image.asset('assets/m.png')),
            Spacer(),

            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton.icon(
                onPressed: () {},

                label: Text('Update', style: TextStyle(color: Colors.white)),
                icon: Icon(Icons.arrow_forward, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
