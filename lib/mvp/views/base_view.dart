import 'package:desafifa_do_moa/my_widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaseView extends StatefulWidget {
  late String _appBarTitle;
  late Widget _pageBody;

  // TODO: GLOBALLLLLLLLL KEEEEEEEEY

  BaseView({
    super.key,
    required String appBarTitle,
    required Widget pageBody,
  }) {
    _appBarTitle = appBarTitle;
    _pageBody = pageBody;
  }

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._appBarTitle),
      ),
      body: widget._pageBody,
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
