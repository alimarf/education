import 'package:flutter/material.dart';

import '../../../../core/common/widgets/gradient_background.dart';
import '../../../../core/res/media_res.dart';
import '../refactors/profile_body.dart';
import '../refactors/profile_header.dart';
import '../widgets/profile_app_bar.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: const ProfileAppBar(),
      body: GradientBackground(
        image: MediaRes.profileGradientBackground,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: const [
            ProfileHeader(),
            ProfileBody(),
          ],
        ),
      ),
    );
  }
}
