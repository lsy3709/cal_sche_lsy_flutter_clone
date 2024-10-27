// import 'package:flutter/material.dart';
//
// import '../const/colors.dart';
// import 'custom_text_field_ch18.dart';
//
//
// class ScheduleBottomSheet extends StatefulWidget {
//   // const ScheduleBottomSheet({Key? key}) : super(key: key);
//   const ScheduleBottomSheet({super.key, required DateTime selectedDate});
//
//   @override
//   State<ScheduleBottomSheet> createState() => _ScheduleBottomSheetState();
// }
//
// class _ScheduleBottomSheetState extends State<ScheduleBottomSheet> {
//   @override
//   Widget build(BuildContext context) {
//     final bottomInset = MediaQuery.of(context).viewInsets.bottom;
//
//     return SafeArea(
//       child: Container(
//         height: MediaQuery.of(context).size.height / 2 +
//             bottomInset, // ➋ 화면 반 높이에 키보드 높이 추가하기
//         color: Colors.white,
//         child: Padding(
//           padding:
//           EdgeInsets.only(left: 8, right: 8, top: 8, bottom: bottomInset),
//           child: Column(
//             // ➋ 시간 관련 텍스트 필드와 내용관련 텍스트 필드 세로로 배치
//             children: [
//               // Row(
//               const Row(
//                 // ➊ 시작 시간 종료 시간 가로로 배치
//                 children: [
//                   // 자식 위젯이 , 부모 위젯 안에서 가득 채우는 기능
//                   // flex 속성으로 비율로 가능. , 1:3 이런식으로
//                   Expanded(
//                     flex: 1,
//                     child: CustomTextField(
//                       // 시작시간 입력 필드
//                       label: '시작 시간',
//                       isTime: true,
//                     ),
//                   ),
//                   // const SizedBox(width: 16.0),
//                   SizedBox(width: 16.0),
//                   Expanded(
//                     flex: 1,
//                     child: CustomTextField(
//                       // 종료시간 입력 필드
//                       label: '종료 시간',
//                       isTime: true,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 8.0),
//       // Expanded(
//               const Expanded(
//                 child: CustomTextField(
//                   // 내용 입력 필드
//                   label: '내용',
//                   isTime: false,
//                 ),
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   // [저장] 버튼
//                   // ➌ [저장] 버튼
//                   onPressed: onSavePressed,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: PRIMARY_COLOR,
//                   ),
//                   // child: Text('저장'),
//                   child: const Text('저장'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   void onSavePressed() {}
// }