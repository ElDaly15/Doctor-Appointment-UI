import 'package:doctor_app/features/profile/data/models/settings_model.dart';
import 'package:doctor_app/features/profile/presentation/views/widgets/custom_settings_list_tile.dart';
import 'package:flutter/material.dart';

class HelpAndInfoPlaceHolder extends StatelessWidget {
  const HelpAndInfoPlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSettingListTile(
          settingsModel: SettingsModel(
              text: 'Who Us ?', icon: Icons.info_outline, isNeedSwitch: false),
        ),
        CustomSettingListTile(
          settingsModel: SettingsModel(
              text: 'Privacy Policy',
              icon: Icons.privacy_tip_outlined,
              isNeedSwitch: false),
        ),
        CustomSettingListTile(
          settingsModel: SettingsModel(
              text: 'Sign Out',
              icon: Icons.logout_outlined,
              isNeedSwitch: false),
        ),
      ],
    );
  }
}
