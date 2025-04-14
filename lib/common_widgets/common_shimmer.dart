import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CommonShimmer extends StatelessWidget {
  final bool? isLoading;
  final Widget? child;
  const CommonShimmer({super.key,this.isLoading,this.child});

  @override
  Widget build(BuildContext context) {
    return isLoading==true?Shimmer.fromColors(
               baseColor: Colors.grey.shade300,
             highlightColor: Colors.grey.shade100,
             enabled: true,child:child??SizedBox()):child??SizedBox();
  }
}