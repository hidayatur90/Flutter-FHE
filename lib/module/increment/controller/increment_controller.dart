import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/increment_view.dart';

class IncrementController extends State<IncrementView>
    implements MvcController {
  static late IncrementController instance;
  late IncrementView view;
  int counter = 0;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  updateCounterIncrement() {
    counter++;
    setState(() {});
  }

  updateCounterDecrement() {
    counter--;
    setState(() {});
  }
}
