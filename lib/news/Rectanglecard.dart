// // ignore_for_file: avoid_print

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import '/api_services/apiJosnstructure.dart';
// import '/api_services/api_req.dart';

// class Rectanglecard extends StatelessWidget {
//   Rectanglecard({super.key});

//   // List ApiArticle =ApiArticle();
//   apiReq r = apiReq();
//   // ignore: non_constant_identifier_names
//   // List ApiArticle = r.apiRequest() as List;
//   @override
//   Widget build(BuildContext context) {
//     List ApiArticle = r.ApiArticle;
//     return Row(children: <Widget>[
//       Expanded(
//         child: SizedBox(
//           height: 200.0,
//           child: ListView.builder(
//               itemCount: ApiArticle.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   // child: Text(ApiArticle[index]['title'] + "\n"),
//                   child: ListTile(
//                     title: Text(
//                       ApiArticle[index]['title'].toString(),
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 61, 14, 228),
//                       ),
//                     ),
//                     subtitle: Text(
//                       ApiArticle[index]['description'].toString(),
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 9, 8, 8),
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//         ),
//       ),
//     ]);
//     // return const ListTile(

//     // //   title: Text(
//     // //     "News 1",
//     // //     style: TextStyle(
//     // //       color: Color.fromARGB(255, 61, 14, 228),
//     // //     ),
//     // //   ),
//     // //   subtitle: Text(
//     // //     "Description of News 1",
//     // //     style: TextStyle(
//     // //       color: Color.fromARGB(255, 204, 204, 204),
//     // //     ),
//     // //   ),
//     // // );
//   }
// }
