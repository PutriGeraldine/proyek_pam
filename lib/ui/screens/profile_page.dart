import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pam_proyek/constants.dart';
import 'package:pam_proyek/ui/screens/widgets/profile_widget.dart';
import 'package:share/share.dart'; // Import package share

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // Fungsi logout
  Future<void> _logout(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.pushNamedAndRemoveUntil(context, '/signup', (route) => false);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Logout failed: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Ambil data pengguna dari Firebase
    final User? user = FirebaseAuth.instance.currentUser;
    final String username = user?.displayName ?? 'Username'; // Default username
    final String email = user?.email ?? 'example@gmail.com'; // Default email

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar pengguna
              Container(
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Constants.primaryColor.withOpacity(.5),
                    width: 5.0,
                  ),
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: user?.photoURL != null
                      ? NetworkImage(user!.photoURL!) // Foto dari Firebase
                      : const AssetImage('assets/images/profile.png') as ImageProvider,
                ),
              ),
              const SizedBox(height: 10),
              // Tampilkan username
              SizedBox(
                width: size.width * .6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        username,
                        style: TextStyle(
                          color: Constants.blackColor,
                          fontSize: 20,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      height: 24,
                      child: Image.asset("assets/images/verified.png"),
                    ),
                  ],
                ),
              ),
              // Tampilkan email
              Text(
                email,
                style: TextStyle(
                  color: Constants.blackColor.withOpacity(.3),
                ),
              ),
              const SizedBox(height: 30),
              // Menu lainnya
              SizedBox(
                height: size.height * .7,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProfileWidget(
                      icon: Icons.person,
                      title: 'My Profile',
                      onTap: () {
                        // Navigasi ke halaman My Profile
                        Navigator.pushNamed(context, '/profile');
                      },
                    ),
                    ProfileWidget(
                      icon: Icons.settings,
                      title: 'Settings',
                      onTap: () {
                        // Navigasi ke halaman Settings
                        Navigator.pushNamed(context, '/settings');
                      },
                    ),
                    ProfileWidget(
                      icon: Icons.notifications,
                      title: 'Notifications',
                      onTap: () {
                        // Navigasi ke halaman Notifications
                        Navigator.pushNamed(context, '/notifications');
                      },
                    ),
                    ProfileWidget(
                      icon: Icons.chat,
                      title: 'FAQs',
                      onTap: () {
                        // Navigasi ke halaman FAQs
                        Navigator.pushNamed(context, '/faqs');
                      },
                    ),
                    ProfileWidget(
                      icon: Icons.share,
                      title: 'Share',
                      onTap: () {
                        // Implementasi berbagi aplikasi
                        Share.share('Check out this awesome app!');
                      },
                    ),
                    ProfileWidget(
                      icon: Icons.logout,
                      title: 'Log Out',
                      onTap: () => _logout(context), // Logout
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
