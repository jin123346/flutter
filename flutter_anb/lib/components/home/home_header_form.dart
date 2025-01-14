import 'package:flutter/material.dart';
import 'package:flutter_anb/components/common/common_form_field.dart';
import 'package:flutter_anb/constanats.dart';
import 'package:flutter_anb/size.dart';
import 'package:flutter_anb/styles.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: Alignment(-0.6, 0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
              child: Padding(
            padding: const EdgeInsets.all(gap_l),
            child: Column(
              children: [
                _buildFomTitle(),
                _buildFormSubTitle(),
                const SizedBox(height: gap_m),
                _buildFormField(),
                const SizedBox(height: gap_m),
                _buildFormSubmit(),
              ],
            ),
          )),
        ),
      ),
    );
  }

  Widget _buildFomTitle() {
    return Text(
      '모두의 숙소에서 숙소를 검색하세요.',
      style: h4(),
    );
  }

  Widget _buildFormSubTitle() {
    return Text(
      '혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 공간전체 숙소까지, 모두의 숙소에 다 있습니다.',
      style: subTitle2(),
    );
  }

  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kAccentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: () {
            print('검색 제출됨');
          },
          child: Text(
            '검색',
            style: subTitle(mColor: Colors.white),
          )),
    );
  }

  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormField(
          prefiexText: '위치',
          hintText: '근처 추천 장소',
        ),
        const SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: CommonFormField(
                prefiexText: '체크인',
                hintText: '날짜입력',
              ),
            ),
            Expanded(
              flex: 1,
              child: CommonFormField(
                prefiexText: '체크아웃',
                hintText: '날짜입력',
              ),
            ),
          ],
        ),
        const SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: CommonFormField(
                prefiexText: '성인',
                hintText: '0',
              ),
            ),
            Expanded(
              flex: 1,
              child: CommonFormField(
                prefiexText: '어린이',
                hintText: '0',
              ),
            ),
          ],
        )
      ],
    );
  }
}
