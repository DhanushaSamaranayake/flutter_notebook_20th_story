import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1174_cosmetics_app/src/model/cosmetic_item.dart';

class CosmeticsDetailPage extends StatefulWidget {
  CosmeticItem? cosmeticItem;

  CosmeticsDetailPage({
    Key? key,
    this.cosmeticItem,
  }) : super(key: key);

  @override
  State<CosmeticsDetailPage> createState() => _CosmeticsDetailPageState();
}

class _CosmeticsDetailPageState extends State<CosmeticsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
