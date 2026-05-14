import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart' show AppColors;
import 'package:imc_calculator/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Man
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "man";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == 'man' ? AppColors.backgroundComponentSelected : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Image.asset("assets/images/male.png", height: 100,),
                      SizedBox(height: 8,),
                      Text("Hombre".toUpperCase(), style:TextStyles.bodyText)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        //Woman
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "woman";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == 'woman' ? AppColors.backgroundComponentSelected : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(10),
                ), 
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Image.asset("assets/images/female.png", height: 100,),
                      SizedBox(height: 8),
                      Text("Mujer".toUpperCase(), style:TextStyles.bodyText)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}