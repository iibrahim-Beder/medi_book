import 'package:flutter/material.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';

class DoctorSpecialityViewBody extends StatelessWidget {
  const DoctorSpecialityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 30),
        child: const Column(
          children: [
        
       ArrowBackBoxAndAddress(),            
        
    
        
          ],
        ),
      ),
    );
  }
}
