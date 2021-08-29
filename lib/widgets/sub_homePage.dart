import 'package:flutter/material.dart';
import '../models/funituremodel.dart';
import 'package:provider/provider.dart';
import '../provider/furniture.dart';

class SubPage extends StatefulWidget {
  static const routename = "/fur_subPage";
  final String id;
  SubPage(this.id);
  @override
  _SubPageState createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  @override
  Widget build(BuildContext context) {
    final allfurniture = Provider.of<FurnitureData>(context);
    final currentFur = allfurniture.chooseByIndex(widget.id);
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(currentFur.iconImage), fit: BoxFit.cover)),
    );
  }
}
