import 'dart:math';

import 'package:flutter/material.dart';

class SearchAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final opacity = min(1 - shrinkOffset / maxExtent + 0.8, 1);
    print('$opacity');
    return Stack(
      children: [
        SizedBox(
          height: 350,
          child: ClipPath(
            clipper: HeaderClipper(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: BoxDecoration(
                gradient:
                    const LinearGradient(colors: [Colors.blue, Colors.red]),
                backgroundBlendMode: BlendMode.difference,
                image: DecorationImage(
                    image: const AssetImage('images/header.png'),
                    fit: BoxFit.cover,
                    opacity: opacity.toDouble()),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => 350;

  @override
  double get minExtent => 90;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint2 = Offset(size.width * 0.5, size.height);
    var endPoint2 = Offset(size.width, 250);

    Path path = Path()
      ..lineTo(0, 250)
      ..quadraticBezierTo(
          controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(HeaderClipper oldClipper) => oldClipper != this;
}

                    // expandedHeight: MediaQuery.of(context).size.height * 0.4,
                    // pinned: true,
                    // title: const Text('Pokedex'),
                    // flexibleSpace: ClipPath(
                    //   clipper = HeaderClipper(),
                    //   child = FlexibleSpaceBar(
                    //       background: Image.asset('images/header.png',
                    //           fit: BoxFit.cover)),
                    // ),