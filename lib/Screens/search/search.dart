import 'package:flutter/material.dart';
import 'package:job_finder_app/Screens/search/widgets/search_input.dart';
import 'package:job_finder_app/Screens/search/widgets/search_options.dart';

import 'widgets/search_app_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(flex: 2, child: Container()),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                  ))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SearchAppBar(),
              SearchInput(),
              SearchOptions()
            ],
          )
        ],
      ),
    );
  }
}
