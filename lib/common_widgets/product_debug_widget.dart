import 'package:e_sale/common_widgets/common_shimmer.dart';
import 'package:e_sale/models/product_response_model.dart';
import 'package:flutter/material.dart';

class ProductDebugWidget extends StatelessWidget {
  final ProductResponseModel responseModel;
  final bool isLoading;
  final Widget child;

  const ProductDebugWidget({
    super.key,
    required this.responseModel,
    this.isLoading = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Widget content;

    if (isLoading) {
      content = child;
    } else if (responseModel.status != ResponseStatus.success) {
      content = Center(
        child: Text(
          responseModel.message ?? "Something went wrong",
          style: const TextStyle(color: Colors.red),
        ),
      );
    } else if (responseModel.products?.isEmpty == true) {
      content = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/no_data_found.png", height: 100),
          const Text("No data available", style: TextStyle(fontSize: 12)),
        ],
      );
    } else {
      content = child;
    }

    return CommonShimmer(
      isLoading: isLoading,
      child: content,
    );
  }

}
