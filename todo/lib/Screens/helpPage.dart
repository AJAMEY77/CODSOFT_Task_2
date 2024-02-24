import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'How to Use:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            HelpPoint(
              number: '1',
              description:
                  'To create: You can create a new note by clicking on the + button.',
            ),
            SizedBox(height: 20),
            HelpPoint(
              number: '2',
              description:
                  'To delete: Swipe from right to left on a note, then click on the delete button to delete it.',
            ),
            SizedBox(height: 20),
            HelpPoint(
              number: '3',
              description:
                  'To edit: Click on the pencil icon inside a note, then a dialog box will appear where you can edit your note.',
            ),
            SizedBox(height: 20),
            HelpPoint(
              number: '4',
              description:
                  'To access help: Tap on the help button located on the app bar to view this help page.',
            ),
            Spacer(), // Add Spacer to push the "Thank You" message to the bottom
            Center(
              child: Text(
                'Thank You :)',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class HelpPoint extends StatelessWidget {
  final String number;
  final String description;

  const HelpPoint({
    required this.number,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            description,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
