import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/router/app_router.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';
import 'package:nadrus_teacher_app/ui/widgets/buttons/customized_button.dart';

class UploadImageBottomSheetDialog extends StatelessWidget {
  final String? imagePath;
  final Function() removeImage;
  final Function() takeAPhoto;
  final Function() openGallery;
  final Function() uploadImage;
  final MutableLiveData<bool?> imageUploadedSuccessfully;
  const UploadImageBottomSheetDialog(
      {this.imagePath,
      required this.removeImage,
      required this.takeAPhoto,
      required this.openGallery,
      required this.uploadImage,
      required this.imageUploadedSuccessfully,
      super.key});

  @override
  Widget build(BuildContext context) {
    return LiveDataBuilder<bool?>(
      data: imageUploadedSuccessfully,
      builder: (context, value) {
        return value == null
            ? SizedBox(
                height: 250,
                child: imagePath != null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _image(imagePath!),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            child: CustomizedButton(
                                callback: uploadImage,
                                child: Text("upload_whiteboard_image".tr())),
                          )
                        ],
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 30, 12, 36),
                            child: Row(
                              children: [
                                Text(
                                  "upload_whiteboard_image".tr(),
                                  style: const TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _uploadMethodWidget(
                                  Icons.camera, "take_a_photo", takeAPhoto),
                              const SizedBox(width: 32),
                              _uploadMethodWidget(Icons.image_outlined,
                                  "open_gallery", openGallery),
                            ],
                          ),
                        ],
                      ),
              )
            : SizedBox(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      value
                          ? "image_uploaded_successfully".tr()
                          : "image_failed_to_upload".tr(),
                      style: const TextStyle(fontSize: 22),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: CustomizedButton(
                        callback: () {
                          imageUploadedSuccessfully.postValue(null);
                          removeImage();
                          appRouter.pop();
                        },
                        child: Text(
                          "ok".tr(),
                        ),
                      ),
                    )
                  ],
                ),
              );
      },
    );
  }

  _image(String path) {
    return Stack(
      children: [
        SizedBox(
          height: 90,
          width: 90,
          child: DottedBorder(
            radius: const Radius.circular(14),
            dashPattern: const [7, 6],
            color: DesignColors.primaryColor.withOpacity(0.5),
            child: Center(child: Image.file(File(path))),
          ),
        ),
        Positioned(
          child: AnimatedGesture(
            callback: removeImage,
            child: const Icon(
              CupertinoIcons.clear_thick_circled,
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }

  _uploadMethodWidget(IconData icon, String text, Function() callback) {
    return AnimatedGesture(
      callback: callback,
      child: SizedBox(
        height: 90,
        width: 90,
        child: DottedBorder(
          radius: const Radius.circular(14),
          dashPattern: const [7, 6],
          color: DesignColors.primaryColor.withOpacity(0.5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: DesignColors.primaryColor.withOpacity(0.5),
                ),
                const SizedBox(height: 6),
                Text(
                  text.tr(),
                  style: TextStyle(
                    fontSize: 12,
                    color: DesignColors.primaryColor.withOpacity(0.6),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
