import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

Widget getSwiperHeader(List imageList, BuildContext context) {
  return Swiper(
    curve: Curves.linear,
    autoplay: true,
    itemCount: imageList.length,
    itemBuilder: (context, index) {
      return Container(
        // height: 300,
        // width: 300,
        child: Image(
          image: NetworkImage(imageList[index]),
          fit: BoxFit.cover,
        ),
      );
    },
    pagination: const SwiperPagination(builder: SwiperPagination.dots),
    control: const SwiperControl(size: 0),
  );
}
