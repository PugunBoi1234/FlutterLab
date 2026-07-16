import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top menu
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, size: 30, color: AppColors.textPrimary,),
        title: Text('Profile setting', style: AppTextStyles.topic),
        centerTitle: true,
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Profile
            Center(child: Text('Profile', style: AppTextStyles.topic)),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.accent,
              backgroundImage: AssetImage('assets/images/profile2.jpg'),
            ),
        
            // Name and Email
            SizedBox(height: 20),
            Center(child: Text('John Smith', style: AppTextStyles.detail)),
            SizedBox(height: 5),
            Center(child: Text('johnsmith@samplemail.com', style: AppTextStyles.detail)),
        
            // Account setting
            SizedBox(height: 25,),
            Text('Account Setting', style: AppTextStyles.topic),
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: AppColors.bgSecondary,
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.lock, size: 30, color: AppColors.info,),
                    title: Text('Change Password', style: AppTextStyles.topic),
                    subtitle: Text('Update your account password', style: AppTextStyles.subTopic),
                    trailing: Icon(Icons.arrow_forward, size: 30, color: AppColors.textPrimary,),
                  ),
                  Divider(
                    color: AppColors.accent,
                    thickness: 1.0,
                  ),
        
                  ItemMenuProfile(icon: Icons.lock,
                  title: 'Change Password',
                  subtitle: 'Update your account password',
                  trailing: Icons.arrow_forward,),
                  Divider(color: AppColors.accent,thickness: 1.0,),
        
                  // Notify Setting
                  ItemMenuProfile(
                    icon: Icons.notifications,
                    title: 'Notification Setting',
                    subtitle: 'Update your notification setting',
                    trailing: Icons.arrow_forward_ios,
                    ), // ITemMenuProfile
        
                ],
        
              ),
            ),
        
          ], 
        ),
      ),
    );
  }
}

class ItemMenuProfile extends StatelessWidget {

  final IconData icon;
  final String title;
  final String subtitle;
  final IconData trailing;

  const ItemMenuProfile({
    super.key, required this.icon, required this.title, required this.subtitle, required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 30, color: AppColors.info,),
      title: Text(title, style: AppTextStyles.topic),
      subtitle: Text(subtitle, style: AppTextStyles.subTopic),
      trailing: Icon(trailing, size: 30, color: AppColors.textPrimary,),
    );
  }
}