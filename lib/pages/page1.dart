import 'package:flutter/material.dart';
// import 'package:custom_route_transition_an/custom_route_transition_an.dart';
import 'package:custom_transition_route/pages/page2.dart';
import 'package:custom_transition_route/helpers/helpers.dart';

class Page1Page extends StatelessWidget {
  const Page1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: MaterialButton(
          color: Colors.white,
          child: const Text('Go to page2'),
          onPressed: () {
            RouteTransitions(
              context: context,
              child: const Page2Page(),
              animation: AnimationType.fadeIn,
              // duration: const Duration(milliseconds: 100),
            );
          },
        )
      ),
    );
  }
}