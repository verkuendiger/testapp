import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({
    super.key,
    required this.url,
    required this.width,
    required this.height,
    required this.cornerRadius,
  });

  final String url;
  final double width;
  final double height;
  final double cornerRadius;

  @override
  Widget build(final BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(cornerRadius),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          width: width,
          height: height,
          imageUrl: url,
          placeholder: (final context, final url) => Shimmer.fromColors(
            baseColor: Colors.black.withOpacity(0.15),
            highlightColor: Colors.black.withOpacity(0.12),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          errorWidget: (final context, final url, final error) =>
              const Placeholder(),
        ),
      );
}
