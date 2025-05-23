

// task 1
// import 'package:flutter/material.dart';
//
// class TestTasks extends StatelessWidget {
//   const TestTasks({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   border: Border.all(color: Colors.black, width: 2),
//                 ),
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               fit: FlexFit.tight,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                   border: Border.all(color: Colors.black, width: 2),
//                 ),
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               height: 100,
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 border: Border.all(color: Colors.black, width: 2),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// task 2
// import 'package:flutter/material.dart';
//
// class TestTasks extends StatelessWidget {
//   const TestTasks({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             Wrap(
//               spacing: 8,
//               runSpacing: 8,
//               children: List.generate(8, (index) { // To‘g‘ridan-to‘g‘ri ro‘yxat yaratish
//                 return Container(
//                   width: 40,
//                   height: 40,
//                   decoration: BoxDecoration(
//                     color: Colors.primaries[index % Colors.primaries.length],
//                     border: Border.all(color: Colors.black, width: 2),
//                   ),
//                 );
//               }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 3 task
// import 'package:flutter/material.dart';
//
// class TestTasks extends StatelessWidget {
//   const TestTasks({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RichText(text: TextSpan(
//                 text: "Flutter ",style: TextStyle(
//                 color: Colors.blue
//             ),children: [
//               TextSpan(text: "Widgets ",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.green)),
//               TextSpan(text: "Tutorial ",style: TextStyle(decoration: TextDecoration.underline,color: Colors.red)),
//
//             ]
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
