import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pam_proyek/ui/screens/signin_page.dart'; // Pastikan ini diimpor
// import 'package:pam_proyek/ui/root_page.dart'; // Hapus atau komentar jika tidak diperlukan

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignIn(), // Ubah ini untuk memulai dengan halaman Sign In
      // Jika Anda ingin menggunakan routing:
      // initialRoute: '/signin',
      // routes: {
      //   '/signin': (context) => SignIn(),
      //   '/signup': (context) => SignUp(),
      //   '/forgot-password': (context) => ForgotPassword(),
      // },
    );
  }
}
