import 'package:flutter/material.dart';

class TechCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(width * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'More Tech',
                  style: TextStyle(
                    fontSize: height * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('Сайт'), // "Website" in Russian
                ),
              ],
            ),
            SizedBox(height: height * 0.004),
            Text(
              '20 октября 2021', // "20 October 2021" in Russian
              style: TextStyle(fontSize: height * 0.03, color: Colors.grey),
            ),
            SizedBox(height: height * 0.008),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {}, // "Design" in Russian
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: FittedBox(child: Text('Дизайн')),
                ),
                SizedBox(width: width * 0.008),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: FittedBox(child: Text('Data Science')),
                ),
                SizedBox(width: width * 0.008),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: FittedBox(child: Text('AR')),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio amet feugiat ut integer tincidunt sed. Fusce vulputate sed commodo, sed lorem. Mi semper orci, semper vestibulum.',
              style: TextStyle(fontSize: height * 0.02),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                BulletPoint(
                  text: 'Есть отбор',
                  fontSize: height * 0.015,
                ), // "There is a selection" in Russian
                SizedBox(width: 16),
                BulletPoint(
                  text: 'Регистрация до 21.09',
                  fontSize: height * 0.015,
                ), // "Registration until 21.09" in Russian
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget for bullet points
class BulletPoint extends StatelessWidget {
  final String text;
  final double fontSize;

  BulletPoint({required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.circle, size: 8, color: Colors.black),
        SizedBox(width: 4),
        Text(text, style: TextStyle(fontSize: fontSize)),
      ],
    );
  }
}
