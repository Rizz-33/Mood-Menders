import 'package:flutter/material.dart';


class EmployeePage extends StatefulWidget {
  @override
  _EmployeePageState createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  String employeeName = '';
  String currentWorkingSite = '';
  bool isPresent = true;
  String absenceReason = '';
  List<String> availableDaysOff = ['Monday', 'Wednesday', 'Friday'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 92, 89, 89),
        appBar: AppBar(
          
          title: const Text('Employee Information'),
           
           
         shape: const RoundedRectangleBorder(
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(25),
               bottomRight: Radius.circular(25),
             ), 
           ),
          ),
        
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Employee Name:',
                  style: TextStyle(fontSize: 18.0),
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      employeeName = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter employee name',
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Current Working Site:',
                  style: TextStyle(fontSize: 18.0),
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      currentWorkingSite = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter current working site',
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    const Text(
                      'Attendance:',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(width: 16.0),
                    Switch(
                      value: isPresent,
                      onChanged: (value) {
                        setState(() {
                          isPresent = value;
                        });
                      },
                    ),
                    Text(
                      isPresent ? 'Present' : 'Absent',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                if (!isPresent)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16.0),
                      const Text(
                        'Reason for Absence:',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            absenceReason = value;
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: 'Enter reason for absence',
                        ),
                      ),
                    ],
                  ),
                const SizedBox(height: 16.0),
                const Text(
                  'Available Days Off:',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(availableDaysOff.join(', ')),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                 
                    print('Employee Name: $employeeName');
                    print('Current Working Site: $currentWorkingSite');
                    print('Attendance: ${isPresent ? 'Present' : 'Absent'}');
                    if (!isPresent) {
                      print('Reason for Absence: $absenceReason');
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


