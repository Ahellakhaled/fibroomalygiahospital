import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomProfileTextField extends StatefulWidget {

  final String? labelName ;
  final IconData icon ;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  TextEditingController ?pController = TextEditingController();



  CustomProfileTextField({super.key,
    this.labelName,
    required this.icon,
    this.focusNode,
    this.validator,
    this.textInputAction,
    this.pController});


  @override
  State<CustomProfileTextField> createState() => _CustomProfileTextFieldState();
}

class _CustomProfileTextFieldState extends State<CustomProfileTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.pController ,
      onChanged: (value){
        setState(() {
          widget.pController!.text=value;
          print(widget.pController);
        });
      },
      validator: (value) => value!.isEmpty ? "Requird" : null,

      cursorColor: AppColors.greyTextColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteColor,
        suffixIcon: Icon(widget.icon,color: AppColors.greyTextColor,),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.greenColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.greyWhite)),
        labelText: widget.labelName,
        labelStyle: const TextStyle(color: AppColors.greenColor,fontSize: 17),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
