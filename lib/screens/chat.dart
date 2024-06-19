import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // width: 375,
          // height: 90,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
          // clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 6, right: 21),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '9:41',
                            style: TextStyle(
                              color: Color(0xFF0F1828),
                              fontSize: 15,
                              fontFamily: 'Segoe UI',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 260),
                    Container(
                        width: 67,
                        height: 11.50,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                  height: double.infinity,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 42.48,
                                        top: 0,
                                        child: Container(
                                          width: 24.52,
                                          height: 11.54,
                                          child: Stack(),
                                        ),
                                      )
                                    ],
                                  )),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
