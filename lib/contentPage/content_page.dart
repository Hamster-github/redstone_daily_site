import 'package:flutter/material.dart';

import 'content_list.dart';
import 'foot_widget.dart';
import 'head_widget.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([Material(
                child: Column(
                  children: [
                    const HeadWidget(),
                    const ContentList(),
                    FootWidget(),
                  ],
                ),
              )]))],
    );
  }
}
