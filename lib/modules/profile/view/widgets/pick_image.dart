import 'package:flutter/material.dart';

import '../../../../core/constant/colors/app_colors.dart';

class PickImage extends StatelessWidget {
  const PickImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // pickedImage == null
        //     ? const CircleAvatar(
        //         radius: 50,
        //         backgroundColor: AppColors.primaryColor,
        //       )
        //     : CircleAvatar(
        //         radius: 50,
        //         backgroundImage: FileImage(_image!),
        //         backgroundImage: Image.file(image!),
        //       ),
        const CircleAvatar(
          radius: 50,
          backgroundColor: AppColors.primaryColor,
        ),
        Positioned(
            left: 25,
            top: 25,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.file_upload_outlined,
                  color: AppColors.whiteColor,
                  size: 25,
                )))
      ],
    );
  }
}
