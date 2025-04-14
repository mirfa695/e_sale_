import 'package:logiology/constants/color_constants.dart';
import 'package:flutter/material.dart';

class MeshGradientBackground extends StatelessWidget {
  final Widget? child;
  const MeshGradientBackground({super.key,this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            for(int i=0;i<5;i++)
            Positioned.fill(
        child: Align(
          alignment: Alignment(Offset(i*0.2, i*0.3).dx * 2 - 1, Offset(i*0.2, i*0.3).dy * 2 - 1), 
          child: Container(
         
            decoration: BoxDecoration(
             
              gradient: LinearGradient(
                colors:
                 ColorConstants.gradientColors,
               begin: Alignment.topRight,
               end: Alignment.bottomLeft
            
              ),
            ),
          ),
        ),
            ),
           child??SizedBox.shrink()
          
          ],
        ),
      ),
    );
  }
}
