import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/widgets/container_shimmer_loading.dart';

class DateBoxListViewShimmerLoading extends StatelessWidget {
  const DateBoxListViewShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> customDateBoxList = List.generate(
        6,
        (index) => ContainerShimmerLoading(
              height: 51,
              width: 50,
            ));

    return Row(
      children: [
        SvgPicture.asset("assets/svgs/left_arro.svg"),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CarouselSlider(
              // carouselController: state.carouselController,
              options: CarouselOptions(
                height: 65.h,
                enlargeFactor: 0.17,
                enlargeCenterPage: true,
                viewportFraction: 0.2,
                enableInfiniteScroll: false,
              ),
              items: customDateBoxList,
            ),
          ),
        ),
        SvgPicture.asset("assets/svgs/right_arrow.svg"),
      ],
    );
  }
}
