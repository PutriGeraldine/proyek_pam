import 'package:flutter/material.dart';
import 'package:pam_proyek/ui/screens/faqs_page.dart';
import 'package:pam_proyek/ui/screens/notifications_page.dart';
import 'package:pam_proyek/ui/screens/profile_page.dart';
import 'package:pam_proyek/ui/screens/settings_page.dart';
import 'package:pam_proyek/ui/screens/signin_page.dart';
import 'package:pam_proyek/ui/screens/signup_page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String profile = '/profile';
  static const String signup = '/signup';
  static const String settings = '/settings';
  static const String notifications = '/notifications';
  static const String faqs = '/faqs';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => const SignIn(),
    profile: (context) => const ProfilePage(),
    signup: (context) => const SignUp(),
    settings: (context) => const SettingsPage(), // Halaman Settings
    notifications: (context) => const NotificationsPage(), // Halaman Notifications
    faqs: (context) => const FAQsPage(), // Halaman FAQs
  };
}
