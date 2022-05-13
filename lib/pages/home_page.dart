import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giaodien/utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // orientation xoay ngang man hinh 
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: KColorPrimary,
      body: SafeArea(
        child: orientation == Orientation.portrait
            ? Stack(
                children: const [
                  GetStarttedBackgroud(),
                  GetStartedHeader(),
                ],
              )
            : Row(
                children: const [
                  Expanded(child: GetStartedHeader()),
                  Expanded(child: GetStarttedBackgroud()),
                ],
              ),
      ),
    );
  }
}

class GetStarttedBackgroud extends StatelessWidget {
  const GetStarttedBackgroud({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
            heightFactor: 0.6,
            widthFactor: 1,
            child: FittedBox(
                fit: BoxFit.cover,
                child: SvgPicture.asset('assets/images/bg_get_started.svg'))));
  }
}

class GetStartedHeader extends StatelessWidget {
  const GetStartedHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset('assets/images/ic_logo.svg'),
        const Text('hi Afsar ,Welcome'),
        const Text('to Silent Moon'),
        const Text(
            'Explore the app, Find some peace of mind to prepare for meditation')
      ],
    );
  }
}
