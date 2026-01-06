import 'package:chefood/core/helper/spacing.dart';
import 'package:chefood/features/home/widgets/custom_appbar.dart';
import 'package:chefood/features/home/widgets/options_item.dart';
import 'package:flutter/material.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(),
        SliverToBoxAdapter(child: verticalSpacing(16)),

        SliverToBoxAdapter(
          child: SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return const OptionsItem();
              },
            ),
          ),
        ),
      ],
    );
  }
}
