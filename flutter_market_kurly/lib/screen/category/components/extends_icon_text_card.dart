import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/models/list_category_menu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExtendsIconTextCard extends StatefulWidget {
  final ListCategoryMenu item;

  const ExtendsIconTextCard({Key? key, required this.item}) : super(key: key);

  @override
  _ExtendsIconTextCardState createState() => _ExtendsIconTextCardState(item);
}

class _ExtendsIconTextCardState extends State<ExtendsIconTextCard> {

  ///State를 상속받는 객체에서도 생성자를 만들어주시고
  ///StatefulWidget에서 넘겨받은 데이터를 멤버변수로 지정.

  _ExtendsIconTextCardState(this.item);

  ///모델 클래스에 만들었던 ListCategoryMenu 클래스 타입의 변수를 선언
  final ListCategoryMenu item;

  bool isShow = false;

  ///setState를 이용해 isShow 변수의 값을 변경하는 메서드zzz
  void toggle() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(width: 8,),
              SizedBox(height: 30,
              width: 30, child: SvgPicture.asset(item.icon),
              ),
              const SizedBox(width: 15,),
              Text(item.title),
              const Spacer(),
              SizedBox(
                width: 30,
                child: IconButton(
                  ///사용자가 IconButton을 눌렀을때 toggle버튼 ㄱ ㄱ
                  onPressed: () {
                    toggle();
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/down-arrow.svg',
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          ),
          AnimatedContainer(duration:
          const Duration(milliseconds: 350),
          curve: Curves.fastOutSlowIn,
            height: isShow ? 100 : 0,
            decoration: BoxDecoration(color: Colors.blue[200]),
            child: Center(child: Text('${item.title}'),),
          )
        ],
      ),
    );
  }
}
