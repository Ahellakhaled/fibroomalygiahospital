// import 'package:fibromyalgia_hospital/screens/ahella/Features/Laboratories/Data/Models/lab_model.dart';
// import 'package:fibromyalgia_hospital/screens/ahella/Features/Laboratories/Presentation/views/laboratories_details_view.dart';
// import 'package:fibromyalgia_hospital/screens/ui/general_screen/enable_location_screen.dart';
// import 'package:fibromyalgia_hospital/screens/ui/general_screen/location_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// class LabItem extends StatelessWidget {
//   const LabItem({
//     super.key,
//     required this.labModel,
//   });
//
//   final LabModel labModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) {
//               return const EnableLocationScreen();
//             }
//           ),
//         );
//       },
//       child: Card(
//         elevation: 0.5,
//         color: Colors.white,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 10,
//             vertical: 5,
//           ),
//           child: Row(
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(6),
//                   child: Image.asset(labModel.image),
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Expanded(
//                 flex: 3,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       labModel.name,
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     Text(
//                       labModel.address,
//                       maxLines: 5,
//                       softWrap: true,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         RatingBar.builder(
//                           unratedColor: const Color(0xffE2E5EA),
//                           itemSize: 20,
//                           ignoreGestures: true,
//                           initialRating: 4,
//                           itemCount: 5,
//                           direction: Axis.horizontal,
//                           itemPadding:
//                               const EdgeInsets.symmetric(horizontal: 2),
//                           itemBuilder: (context, _) => const Icon(
//                             Icons.star,
//                             color: Color(0xffF6D060),
//                           ),
//                           onRatingUpdate: (rating) {},
//                         ),
//                         Text(
//                           labModel.phone,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
