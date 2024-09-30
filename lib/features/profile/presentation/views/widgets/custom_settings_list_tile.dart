import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:doctor_app/features/profile/data/models/settings_model.dart';
import 'package:flutter/material.dart';

class CustomSettingListTile extends StatefulWidget {
  const CustomSettingListTile({super.key, required this.settingsModel});
  final SettingsModel settingsModel;

  @override
  State<CustomSettingListTile> createState() => _CustomSettingListTileState();
}

class _CustomSettingListTileState extends State<CustomSettingListTile> {
  bool switchStatus = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        widget.settingsModel.icon,
        color: AppColors.textMainTitles,
      ),
      title: Text(
        widget.settingsModel.text,
        style: TextStyles.font18Medium(context)
            .copyWith(color: const Color(0xff8696BB)),
      ),
      trailing: widget.settingsModel.isNeedSwitch
          ? Switch(
              activeColor: AppColors.primaryColor,
              inactiveThumbColor: AppColors.textMainTitles,
              value: switchStatus,
              onChanged: (value) {
                setState(() {
                  switchStatus = value;
                });
              })
          : IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_outlined),
            ),
    );
  }
}
