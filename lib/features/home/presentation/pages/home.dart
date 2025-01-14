import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/core/utils/fontstyles/fontstyles.dart';
import 'package:pulse/features/home/presentation/widgets/bottom_bar.dart';
import 'package:pulse/features/home/presentation/widgets/drawrer_widget.dart';
import 'package:pulse/features/home/presentation/widgets/filter_section.dart';
import 'package:pulse/features/home/presentation/widgets/news_list_builder.dart';
import 'package:pulse/features/home/presentation/widgets/profile_button.dart';
import 'package:pulse/features/home/presentation/widgets/search_button.dart';
import 'package:pulse/features/home/provider/home_screen_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeScreenProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: DrawrerWidget(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          SearchButton(),
          SizedBox(
            width: 10,
          ),
          ProfileButton(),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Breaking News",
                  style: Fontstyles.Headline2(context),
                ),
                IconButton(
                    onPressed: () {
                      homeProvider.toggleFilterVisiblity();
                    },
                    icon: Icon(
                      Icons.sort,
                      color: Theme.of(context).colorScheme.tertiary,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
      
            // Filter Section
            FilterSection(
              isVisible: homeProvider.filterBool,
            ),
      
            SizedBox(height: 10,),
      
            // News Section
      
            Expanded(
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                   return NewsListBuilder();
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 5,
                      ),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
