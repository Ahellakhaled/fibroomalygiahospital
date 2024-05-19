import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class ProfileEditTextField extends StatefulWidget {
  final String? labelName ;
  final IconData? icon;
  TextEditingController? tController = TextEditingController();
  final String text;
  final bool isPass;
  GlobalKey<FormState> formstate = GlobalKey();
  ProfileEditTextField({
    super.key,
    this.icon,
    required this.tController,
    required this.text,
    this.isPass = false,
    required this.formstate,
    this.labelName,
  });

  //CustomProfileTextField({super.key, this.labelName, required this.icon, this.tController});

  @override
  State<ProfileEditTextField> createState() => _ProfileEditTextFieldState();
}
class _ProfileEditTextFieldState extends State<ProfileEditTextField> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextFormField(
        key: widget.formstate,
        controller: widget.tController,
        onChanged: (value) {
          setState(() {
            widget.tController!.text = value;
            print(widget.tController);
          });
        },
        validator: (value) {
          if (value!.isEmpty) {
            return "TextField is Empty";
          }
          return null;
        },
        obscureText: widget.isPass ? obscure : false,
        cursorColor: AppColors.greyTextColor,
        decoration: InputDecoration(
          suffixIcon: widget.isPass
              ?
          IconButton(
              onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              }, icon: const Icon(
            Iconsax.eye_slash,
            color: AppColors.greyTextColor,
          )
          )
              : const SizedBox(),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.greyWhite)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.greyWhite)),
          labelText: widget.text,
          labelStyle:
          const TextStyle(color: AppColors.greyTextColor, fontSize: 17),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
class CustomTextFieldprof extends StatelessWidget {
  final TextEditingController? Controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final void Function(String)? onFieldSubmitted;
  final String? labelText;

  const CustomTextFieldprof({
    super.key,
    this.Controller,
    this.focusNode,
    this.keyboardType,
    this.prefixIcon,
    this.validator,
    this.textInputAction,
    this.obscureText,
    this.suffixIcon,
    this.onFieldSubmitted,
    this.labelText, required IconData icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: Controller,
      focusNode: focusNode,
      obscureText: obscureText ?? false,
      textInputAction: textInputAction,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        fillColor: AppColors.appBackgroundColor,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.greyWhite)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.greyWhite)),
        labelText: labelText,
        labelStyle:
        const TextStyle(color: AppColors.greyTextColor, fontSize: 17),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        filled: true,
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: suffixIcon,
      ),
      validator: validator,
      onFieldSubmitted: (value) {
        onFieldSubmitted;
      },
    );
  }
}


