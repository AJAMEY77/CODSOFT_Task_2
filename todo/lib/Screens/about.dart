import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
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
            Center(
              child: Text(
                'About Us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Your about us content

            SizedBox(height: 10),
            Text(
              'Hi I am Amey Jadhav, I am a Second Year University Student'
              ''
              'this is the Second task "To-Do List App" given by CODSOFT',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Open Instagram profile
                  },
                  child: Image.network(
                    'https://i.postimg.cc/5yv05hTp/insta-removebg-preview.png', // Replace with your Instagram image URL
                    width: 40,
                    height: 40,
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    // Open LinkedIn profile
                  },
                  child: Image.network(
                    'https://i.postimg.cc/XY5ZcCS4/linkedin-removebg-preview.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    // Open GitHub profile
                  },
                  child: Image.network(
                    'https://i.postimg.cc/rpWSmHFG/Git-Hub-removebg-preview.png',
                    width: 55,
                    height: 55,
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    // Open Twitter profile
                  },
                  child: Image.network(
                    'https://i.postimg.cc/DwxN68qp/twitter-removebg-preview.png', // Replace with your Twitter image URL
                    width: 65,
                    height: 65,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
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
