library version;

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:custom/custom.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  final String number;
  final String appVersion;

  const ProfilePage({
    super.key,
    required this.username,
    required this.number,
    required this.appVersion,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom.appBar('My Profile'),
      body: Column(
        children: [
          ProfileImagePicker(
            onImagePicked: (File? image) {},
            username: username,
            number: number,
            pickericon: Icons.person,
            conIcon: Icons.camera,
          ),
          const ProfileTile(
            title: 'My Orders',
            icon: Icons.shopping_cart,
            trailingIcon: Icons.arrow_right,
          ),
          const ProfileTile(
            title: 'My Carts',
            icon: Icons.shopping_basket,
            trailingIcon: Icons.arrow_right,
          ),
          const ProfileTile(
            title: 'Invoice',
            icon: Icons.receipt,
            trailingIcon: Icons.arrow_right,
          ),
          const ProfileTile(
            title: 'Manage Address',
            icon: Icons.location_on,
            trailingIcon: Icons.arrow_right,
          ),
          const ProfileTile(
            title: 'Terms and Conditions',
            icon: Icons.edit_document,
            trailingIcon: Icons.arrow_right,
          ),
          ProfileTile(
            title: 'App Version',
            subtitle: appVersion,
            icon: Icons.info,
          ),
        ],
      ),
    );
  }
}
