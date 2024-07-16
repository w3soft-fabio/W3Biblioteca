import 'package:flutter/material.dart';

class CustomListViewWidget extends StatelessWidget {

  final Widget Function(BuildContext, int) itemBuilder;
  final int? itemCount;
  const CustomListViewWidget({
    super.key,
    this.itemCount, 
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
