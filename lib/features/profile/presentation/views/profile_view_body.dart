import 'package:doctor_app/core/utils/app_colors.dart';
import 'package:doctor_app/core/utils/text_styles.dart';
import 'package:doctor_app/features/profile/presentation/views/widgets/custom_sliver_list_for_settings.dart';
import 'package:doctor_app/features/profile/presentation/views/widgets/help_and_info_place_holder.dart';
import 'package:doctor_app/features/profile/presentation/views/widgets/profile_view_body_header.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SafeArea(child: SizedBox())),
          const SliverToBoxAdapter(child: ProfileViewBodyHeader()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Settings',
              style: TextStyles.font20SemiBold(context)
                  .copyWith(color: AppColors.textMainTitles),
            ),
          ),
          CustomSliverForSettings(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Help & Info',
              style: TextStyles.font20SemiBold(context)
                  .copyWith(color: AppColors.textMainTitles),
            ),
          ),
          const SliverToBoxAdapter(
            child: HelpAndInfoPlaceHolder(),
          ),
        ],
      ),
    );
  }
}
