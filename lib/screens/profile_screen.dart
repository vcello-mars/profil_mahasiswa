import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart'; 
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    SizedBox(height: 16),
                    ProfileHeader(
                      name: 'Valentino Cello Christian',
                      nim: '25.11.6300',
                    ),
                    SizedBox(height: 12),
                    SocialMediaRow(),
                    ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'valentino.c@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                  ],
                ),
              ),
            ),
            ActionButtons(),
          ],
        ),
      ),
    );
  }
}