import 'package:doctor_app/features/profile/data/models/settings_model.dart';
import 'package:doctor_app/features/profile/presentation/views/widgets/custom_settings_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSliverForSettings extends StatelessWidget {
  CustomSliverForSettings({super.key});
  final List<SettingsModel> settings = [
    SettingsModel(
      text: 'Personal Profile',
      icon: Icons.person_2_outlined,
      isNeedSwitch: false,
    ),
    SettingsModel(
      isNeedSwitch: false,
      text: 'Shedule',
      icon: FontAwesomeIcons.calendarDays,
    ),
    SettingsModel(
      isNeedSwitch: false,
      text: 'Payments',
      icon: FontAwesomeIcons.wallet,
    ),
    SettingsModel(
      isNeedSwitch: false,
      text: 'Favorite',
      icon: FontAwesomeIcons.heart,
    ),
    SettingsModel(
      isNeedSwitch: true,
      text: 'Notifications',
      icon: FontAwesomeIcons.bell,
    ),
    SettingsModel(
      isNeedSwitch: false,
      text: 'Language',
      icon: FontAwesomeIcons.earthAfrica,
    ),
    SettingsModel(
      isNeedSwitch: true,
      text: 'Mode',
      icon: Icons.mode_night_outlined,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return CustomSettingListTile(
          settingsModel: settings[index],
        );
      }, childCount: 7),
    );
  }
}
