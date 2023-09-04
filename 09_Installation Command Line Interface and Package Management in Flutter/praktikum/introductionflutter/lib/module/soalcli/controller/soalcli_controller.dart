import 'package:flutter/material.dart';
import 'package:introductionflutter/core.dart';
import '../view/soalcli_view.dart';

class SoalcliController extends State<SoalcliView> {
  static late SoalcliController instance;
  late SoalcliView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
