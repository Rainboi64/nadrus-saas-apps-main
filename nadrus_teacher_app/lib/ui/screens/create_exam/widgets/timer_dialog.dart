// import 'dart:async';
//
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:nadrus_teacher_app/config/ui_config.dart';
// import 'package:nadrus_teacher_app/ui/resources/colors/colors.dart';
// import 'package:nadrus_teacher_app/ui/widgets/animations/animated_gesture.dart';
//
// class TimerDialog extends StatefulWidget {
//   final int startValue;
//   const TimerDialog({required this.startValue, super.key});
//
//   @override
//   State<TimerDialog> createState() => _TimerDialogState();
// }
//
// class _TimerDialogState extends State<TimerDialog> {
//   Timer? _timer;
//   late int _current; // Current countdown value
//   bool _isRunning = false; // Flag to check if timer is running
//
//   @override
//   void initState() {
//     super.initState();
//     _current = widget.startValue;
//   }
//
//   void startTimer() {
//     _isRunning = true;
//     const oneSec = Duration(seconds: 1);
//     _timer = Timer.periodic(
//       oneSec,
//       (Timer timer) => setState(() {
//         if (_current < 1) {
//           timer.cancel();
//           _isRunning = false;
//         } else {
//           _current = _current - 1;
//         }
//       }),
//     );
//   }
//
//   void pauseTimer() {
//     _timer?.cancel();
//     setState(() {
//       _isRunning = false;
//     });
//   }
//
//   void stopTimer() {
//     _timer?.cancel();
//     setState(() {
//       _current = widget.startValue; // Reset to original value
//       _isRunning = false;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       insetPadding: EdgeInsets.symmetric(
//           horizontal: 12, vertical: screenSize(context).height * 0.2),
//       backgroundColor: Colors.white,
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 12),
//         decoration: BoxDecoration(
//             color: DesignColors.white,
//             borderRadius: BorderRadius.circular(14),
//             boxShadow: const [
//               BoxShadow(color: Colors.black12, spreadRadius: 4, blurRadius: 5),
//             ]),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               '$_current',
//               style: const TextStyle(fontSize: 72),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 _isRunning
//                     ? timerButton("pause".tr(), Icons.pause, pauseTimer)
//                     : timerButton("play".tr(), Icons.play_arrow, startTimer),
//                 timerButton("stop".tr(), Icons.stop, stopTimer)
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   timerButton(String title, IconData icon, Function() callback) {
//     return AnimatedGesture(
//       callback: callback,
//       child: Row(
//         children: [
//           Text(title),
//           const SizedBox(width: 4),
//           Icon(icon),
//         ],
//       ),
//     );
//   }
// }
