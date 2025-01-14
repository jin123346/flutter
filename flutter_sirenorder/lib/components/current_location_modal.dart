import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sirenorder/constants.dart';

class CurrentLocationModal extends StatefulWidget {
  const CurrentLocationModal({super.key});

  @override
  State<CurrentLocationModal> createState() => _CurrentLocationModalState();
}

class _CurrentLocationModalState extends State<CurrentLocationModal> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 250,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '위치설정',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Container(
            width: width,
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 115),
            height: 80,
            child: TextButton(
              onPressed: () {
                print('현재위치로 설정 누름');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.gps_fixed_outlined,
                    color: kAccentColor,
                  ),
                  Text(
                    '현재 위치로 설정',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: width * 0.9,
              height: 50,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: kAccentColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        '위치 추가하기',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
