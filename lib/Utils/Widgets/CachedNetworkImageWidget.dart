import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppLoder.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  final String? image;
  final double? height;
  final double? width;
  final Color? color;
  const CachedNetworkImageWidget(
      {super.key, required this.image, this.height, this.width, this.fit, this.color});

  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return image != null
        ? CachedNetworkImage(

            imageUrl: image ?? '',
            height: height,
            width: width,
            color: color,
            errorWidget: (context, url, error) =>
                const Center(child: AppLoder()),
            fit: fit ?? BoxFit.cover,
          )
        : SizedBox.shrink();
  }
}
