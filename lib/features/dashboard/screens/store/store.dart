import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/widgets/appbar/tab_bar.dart';
import 'package:flutter_e_commerce_app/common/widgets/brands/brands_card.dart';
import 'package:flutter_e_commerce_app/common/widgets/text/section_header_widget.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/store/widgets/category_tab.dart';
import 'package:flutter_e_commerce_app/features/dashboard/screens/store/widgets/store_primary_header.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 320,
                pinned: true,
                floating: false,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    children: [
                      //primary header
                      StorePrimaryHeader(),
                      SizedBox(height: USizes.spaceBtwItems),
                      //brands heading
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: USizes.defaultSpace,
                        ),
                        child: Column(
                          children: [
                            SectionHeaderWidget(
                              title: 'Brands',
                              onPressed: () {},
                            ),

                            SizedBox(
                              height: USizes.brandCardHeight,
                              child: ListView.separated(
                                separatorBuilder:
                                    (context, int index) => SizedBox(
                                      width: USizes.spaceBtwItems / 2,
                                    ),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 8,
                                itemBuilder: (context, index) => BrandCard(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: TabBarWidget(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Cloths')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
