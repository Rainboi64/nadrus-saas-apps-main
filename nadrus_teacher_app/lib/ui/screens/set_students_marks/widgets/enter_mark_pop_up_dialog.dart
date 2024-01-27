import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/student/student.dart';
import 'package:nadrus_teacher_app/ui/widgets/buttons/customized_button.dart';
import 'package:nadrus_teacher_app/ui/widgets/text_fields/customized_text_form_field.dart';

class EnterMarkPopDialog extends StatelessWidget {
  final Student student;
  final String completeMark;
  final MutableLiveData<String> deservedScore;
  final Function(String? deservedScore) sendMark;
  const EnterMarkPopDialog(
      {required this.student,
      required this.completeMark,
      required this.sendMark,
      required this.deservedScore,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 280,
        width: 330,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 5,
              blurRadius: 6,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("enter_student_mark"
                  .tr(namedArgs: {"model": student.fullName()})),
              SizedBox(
                width: 150,
                child: CustomizedTextFormField(
                  // validator: (p0) {
                  //   if (p0 != null) {
                  //     double mark = double.parse(p0);
                  //     if (mark < 0) {
                  //       return "Mark should be greater than 0";
                  //     }
                  //     if (mark > 200) {
                  //       return "Mark should be lesser than 200";
                  //     }
                  //
                  //     return null;
                  //   }
                  // },
                  keyboardType: TextInputType.number,
                  suffixIconConstraints:
                      const BoxConstraints(maxHeight: 60, maxWidth: 60),
                  suffixIcon: Text(
                    "mark".tr(namedArgs: {"model": completeMark}),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTextChanged: (mark) {
                    deservedScore.postValue(mark);
                  },
                ),
              ),
              LiveDataBuilder<String>(
                data: deservedScore,
                builder: (context, deservedScore) {
                  return SizedBox(
                    width: double.infinity,
                    child: CustomizedButton(
                      enabled: deservedScore.isNotEmpty,
                      child: Text("send_mark".tr()),
                      callback: () {
                        sendMark(deservedScore);
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
