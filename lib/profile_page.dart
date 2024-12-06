// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Home Page Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Welcome to the Flutter Home Page!',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blue,
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'This is your main dashboard. You can use the app to perform various tasks. Scroll down to see some useful cards.',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 30),
//             Expanded(
//               child: ListView(
//                 children: <Widget>[
//                   _buildCard('Card 1', 'This is the description for card 1.'),
//                   _buildCard('Card 2', 'This is the description for card 2.'),
//                   _buildCard('Card 3', 'This is the description for card 3.'),
//                   _buildCard('Card 4', 'This is the description for card 4.'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCard(String title, String description) {
//     return Card(
//       elevation: 5,
//       margin: EdgeInsets.symmetric(vertical: 10),
//       child: ListTile(
//         contentPadding: EdgeInsets.all(16),
//         leading: Icon(Icons.card_giftcard, color: Colors.blue),
//         title: Text(
//           title,
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         subtitle: Text(description),
//         trailing: Icon(Icons.arrow_forward, color: Colors.blue),
//         onTap: () {
//           print('$title tapped');
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Name:', style: TextStyle(fontSize: 18)),
            TextField(controller: _nameController),
            SizedBox(height: 20),
            Text('Age:', style: TextStyle(fontSize: 18)),
            TextField(controller: _ageController),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Update the profile information
                print('Name: ${_nameController.text}');
                print('Age: ${_ageController.text}');
              },
              child: Text('Save Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
