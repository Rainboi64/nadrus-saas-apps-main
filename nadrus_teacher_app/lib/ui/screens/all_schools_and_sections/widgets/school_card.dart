import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/models/data/school/school.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors_night.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_column.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

import '../../../../controllers/tenant_controller.dart';
import '../../../../router/app_router.dart';

class SchoolCard extends StatefulWidget {
  final School school;
  const SchoolCard({required this.school, super.key});

  @override
  State<SchoolCard> createState() => _SchoolCardState();
}

class _SchoolCardState extends State<SchoolCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: isExpanded
            ? AnimatedColumn(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    decoration: const BoxDecoration(
                      color: DesignColors.secondaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.school.tenant ?? "",
                          style: const TextStyle(
                            fontSize: 20,
                            color: DesignColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_up),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: DesignColors.white,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                        ),
                        border:
                            Border.all(color: DesignColorsDark.secondaryColor)),
                    child: SizedBox(
                      height: widget.school.sections.length * 52,
                      child: ListView.builder(
                        itemCount: widget.school.sections.length,
                        itemBuilder: (context, index) => AnimatedGesture(
                          callback: () async {
                            await TenantController.saveTenant(
                                widget.school.tenant ?? "");
                            appRouter
                                .push(SchoolDetails(school: widget.school));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal: 12,
                            ),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: DesignColors.secondaryColor),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (widget.school.grade != null &&
                                    widget.school.grade!.label != null &&
                                    widget.school.sections[index].label != null)
                                  Text(
                                    "${widget.school.grade!.label!} - ${widget.school.sections[index].label!}",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: DesignColors.textColor,
                                    ),
                                  ),
                                const Icon(Icons.arrow_forward),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                decoration: BoxDecoration(
                  color: const Color(0XFFF5F5F5),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.school.tenant ?? "",
                      style: const TextStyle(
                        fontSize: 20,
                        color: DesignColors.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
      ),
    );
  }
}
