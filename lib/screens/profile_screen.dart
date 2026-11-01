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
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    ProfileHeader(
                      name: 'Valentino Cello Chrstian',
                      nim: '25.11.6300',
                    ),
                    SizedBox(height: 20),
                    ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'valentino.c@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Media Sosial',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SocialMediaRow(),
                  ],
                ),
              ),
            ),

            const Flexible(
              flex: 1,
              child: ActionButtons(),
            ),
          ],
        ),
      ),
    );
  }
}