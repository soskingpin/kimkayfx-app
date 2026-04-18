import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/constants/app_colors.dart';
import 'features/splash/splash_screen.dart';
import 'features/auth/login_screen.dart';
import 'navigation/bottom_nav.dart';

const FirebaseOptions firebaseOptions = FirebaseOptions(
  apiKey: "AIzaSyDV-9L-sKfK6W80ITIeU2F_4EiHoxNV3Wk",
  appId: "1:120005503166:web:4aa22a4e313153196716ef",
  messagingSenderId: "120005503166",
  projectId: "ultra-signals-1",
  authDomain: "ultra-signals-1.firebaseapp.com",
  storageBucket: "ultra-signals-1.firebasestorage.app",
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try { await Firebase.initializeApp(options: firebaseOptions); } catch (_) {}
  runApp(const KimkayFxApp());
}

class KimkayFxApp extends StatelessWidget {
  const KimkayFxApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KimKayFX Academy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.bgLight,
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryGreen),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const BottomNavScreen(),
      },
    );
  }
}

