import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nadrus_teacher_app/extensions/assets_extension.dart';
import 'package:nadrus_teacher_app/models/data/session/session.dart';
import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';

import '../../../../controllers/tenant_controller.dart';
import '../../../../extensions/date_extension.dart';
import '../../../../router/app_router.dart';

enum ClassStatus { done, pending, now }

class ClassesCard extends StatefulWidget {
  final Session session;
  const ClassesCard({required this.session, super.key});

  @override
  State<ClassesCard> createState() => _ClassesCardState();
}

class _ClassesCardState extends State<ClassesCard> {
  double height = 140;
  String patchSvg = "done";
  Color basicColor = DesignColors.secondaryColor;
  Color sectionTextColor = DesignColors.textColor;
  Color timeColor = DesignColors.textColor;
  ClassStatus classStatus = ClassStatus.pending;

  setClassStatus() {
    if (widget.session.done.toString() == "1") {
      classStatus = ClassStatus.done;
      return;
    }
    if (widget.session.nowActive.toString() == "1") {
      classStatus = ClassStatus.now;
      return;
    }
    classStatus = ClassStatus.pending;
    return;
  }

  setValues() {
    setClassStatus();
    switch (classStatus) {
      case ClassStatus.done:
        return;
      case ClassStatus.pending:
        {
          patchSvg = "pending";
          basicColor = const Color(0XFFD6D5DC);
          sectionTextColor = DesignColors.textColor;
          timeColor = DesignColors.textColor;
          return;
        }
      case ClassStatus.now:
        {
          patchSvg = "now";
          basicColor = DesignColors.primaryColor;
          sectionTextColor = DesignColors.white;
          timeColor = DesignColors.black;
          return;
        }
    }
  }

  @override
  void initState() {
    setValues();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedGesture(
      callback: () async {
        await TenantController.saveTenant(widget.session.tenantId ?? "");
        appRouter.push(SessionDetails(session: widget.session));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(patchSvg.svgAsset),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Container(
                height: height,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: basicColor),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.session.fromTime != null &&
                        widget.session.toTime != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14.0),
                        child: Text(
                          "from_to".tr(namedArgs: {
                            "from": formatTimeString(
                                widget.session.fromTime.toString()),
                            "to": formatTimeString(
                                widget.session.toTime.toString())
                          }),
                          style: const TextStyle(
                            fontSize: 20,
                            color: DesignColors.textColor,
                          ),
                        ),
                      ),
                    if (widget.session.section != null &&
                        widget.session.section!.label != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 13.0),
                        child: Text(
                          widget.session.section!.label!.toString(),
                          style: const TextStyle(
                            fontSize: 18,
                            color: DesignColors.textColor,
                          ),
                        ),
                      ),
                    if (widget.session.tenantId != null)
                      Text(
                        widget.session.tenantId.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          color: DesignColors.textColor,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: height,
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 15),
                decoration: BoxDecoration(
                  color: basicColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                  ),
                ),
                child: Center(
                  child: widget.session.section != null
                      ? Text(
                          widget.session.section!.label ?? "",
                          style:
                              TextStyle(fontSize: 16, color: sectionTextColor),
                        )
                      : const SizedBox.shrink(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
