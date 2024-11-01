//
//
// import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:provider/provider.dart';
//
// import '../component/login_text_field.dart';
// import '../const/colors.dart';
// import '../provider/schedule_provider.dart';
// import 'home_screen.dart';
//
// class AuthScreen extends StatelessWidget {
//   const AuthScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Center(
//               child: FractionallySizedBox(
//                 widthFactor: 0.7,
//                 child: Image.asset(
//                   'assets/img/logo.jpg',
//                 ),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () => onGoogleLoginPress(context),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: SECONDARY_COLOR,
//               ),
//               child: Text(
//                   '구글 로그인',
//                   style: TextStyle(color: Colors.white), // 텍스트 색상을 명시적으로 흰색으로 설정
//                 ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   onGoogleLoginPress(BuildContext context) async {
//     GoogleSignIn googleSignIn = GoogleSignIn(
//       scopes: [
//         'email',
//       ],
//     );
//
//     try {
//       GoogleSignInAccount? account = await googleSignIn.signIn();
//
//       final GoogleSignInAuthentication? googleAuth = await account?.authentication;
//
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth?.accessToken,
//         idToken: googleAuth?.idToken,
//       );
//
//       final result = await FirebaseAuth.instance.signInWithCredential(credential);
//
//       Navigator.of(context).push(
//         MaterialPageRoute(
//           builder: (_) => HomeScreen(),
//         ),
//       );
//     } catch (error) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('로그인 실패')),
//       );
//     }
//   }
// }
