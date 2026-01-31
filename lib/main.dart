import 'package:banking/view/source/app_screens/home_screen.dart';
import 'package:banking/view/source/authScreens/sign_in_Screen.dart';
import 'package:flutter/material.dart';
void main()
{
 runApp(MyApp());
}
class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// bool isSecure=true;
// bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
    );
//
//       Scaffold(
//         body: Center(child:
//           Switch(
//             /*
//             void add(int a, int b)
//             {
//             }
//
//             int main()
//             {
//             add(4,5)
//             }
//             * */
//               value: isSwitched, // on-->true, off---> false---->  by default
//               // pera metrize function /clickable value
//               onChanged: (value){
//                 isSwitched=value;
//                 setState(() {
//
//                 });
//               }
//
//           )
//           // TextFormField(
//           //   obscureText: isSecure,
//           //   decoration: InputDecoration(
//           //     suffixIcon: IconButton(
//           //         onPressed: (){
//           //           isSecure=false;
//           //           setState(() {
//           //
//           //           });
//           //         }, icon: Icon(
//           //         isSecure==true?Icons.visibility_off:Icons.visibility))
//           //   ),
//           // ),
//         ),
//       ),
//     );
   }
 }
