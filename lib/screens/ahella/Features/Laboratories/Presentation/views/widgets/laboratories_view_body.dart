// import 'package:fibromyalgia_hospital/screens/ahella/Core/widgets/custom_header_section.dart';
// import 'package:fibromyalgia_hospital/screens/ahella/Features/Diagnostics/Presentation/views/diagnostics_book_view.dart';
// import 'package:flutter/material.dart';
// class LaboratoriesViewBody extends StatelessWidget {
//   const LaboratoriesViewBody({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             CustomHeaderSection(title: 'Laboratories', onTap:() => Navigator.pop(context)),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(6),
//                 border: Border.all(color: const Color(0xff0EBE7F)),
//               ),
//               padding: const EdgeInsets.all(4),
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => const DiagnosticsBookView(),
//                     ),
//                   );
//                 },
//                 child: const Text(
//                   'Hospital Test',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xff0EBE7F),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 8),
//         const LabSearchSection(),
//         const SizedBox(height: 18),
//         const LabCategorySection(),
//         const SizedBox(height: 8),
//         const Expanded(child: LabListView()),
//       ],
//     );
//   }
// }
