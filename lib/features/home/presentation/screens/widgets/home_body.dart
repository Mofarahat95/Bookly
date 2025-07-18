import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/screens/widgets/best_seller_list.dart';
import 'package:bookly/features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/screens/widgets/book_list_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomAppBar(),
              BookListWidget(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Best Seller',
                  style: style20(),
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerList(),
        )
      ],
    );
  }
}
