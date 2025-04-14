import 'package:e_sale/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class FilterElements extends StatelessWidget {
  final String? title;
  final List<String>? elements;
  final Function(dynamic)? onTap;
  final bool Function(dynamic)? isSelected;

  const FilterElements({
    super.key,
    this.title,
    this.elements,
    this.onTap,
    this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title ?? ""),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Obx(() => Row(
                children: [
                  for (int i = 0; i < (elements?.length ?? 0); i++)
                    InkWell(
                      onTap: () {
                        onTap?.call(title == "Price" ? i : elements?[i]);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: (isSelected != null &&
                                  isSelected!(title == "Price" ? ((i+1)*100) : elements?[i]))
                              ? ColorConstants.tertiary.withOpacity(0.2)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 0.2,
                            color: ColorConstants.lightGreyColr,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(elements?[i] ?? ""),
                        ),
                      ),
                    ),
                ],
              )),
        ),
      ],
    );
  }
}
