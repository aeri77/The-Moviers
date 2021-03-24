import 'package:flutter/material.dart';

import 'grid_content.dart';

/// @author Aeri created on 3/24/2021
class SliverAppbarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          snap: true,
          floating: true,
          expandedHeight: 160.0,
          flexibleSpace: const FlexibleSpaceBar(
            background: FlutterLogo(),
          ),
        ),
        SliverToBoxAdapter(
          child: Center(
              child: ContentGridWidget(),
          ),
        ),
      ],
    );
  }
}

  
