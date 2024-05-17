// import 'package:fibromyalgia_hospital/screens/ahella/Core/widgets/custom_header_section.dart';
// import 'package:fibromyalgia_hospital/screens/ahella/Features/Laboratories/Data/Models/lab_model.dart';
// import 'package:flutter/material.dart';
// class LaboratoriesDetailsViewBody extends StatelessWidget {
//   const LaboratoriesDetailsViewBody({super.key, required this.labModel});
//
//   final LabModel labModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CustomHeaderSection(
//           title: '',
//           onTap: () => Navigator.pop(context),
//         ),
//         const SizedBox(height: 40),
//         Text(
//           labModel.name,
//           style: const TextStyle(
//             fontSize: 24,
//             color: Colors.black,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         const SizedBox(height: 30),
//         Image.asset(labModel.image),
//         const SizedBox(height: 20),
//         const Align(
//           alignment: Alignment.centerLeft,
//           child: Text(
//             'Address:',
//             style: TextStyle(fontSize: 18),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 20),
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               labModel.address,
//               style: const TextStyle(fontSize: 18),
//             ),
//           ),
//         ),
//         const SizedBox(height: 20),
//         const Align(
//           alignment: Alignment.centerLeft,
//           child: Text(
//             'Phone:',
//             style: TextStyle(fontSize: 16),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 20),
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               labModel.phone,
//               style: const TextStyle(fontSize: 18),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
