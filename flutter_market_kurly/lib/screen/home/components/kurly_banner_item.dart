import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/models/home_banner.dart';
import 'package:flutter_market_kurly/screen/home/components/box_border_text.dart';
import 'package:flutter_market_kurly/screen/home/components/number_indicator.dart';

class KurlyBannerItem extends StatefulWidget {
  @override
  _KurlyBannerItemState createState() => _KurlyBannerItemState();
}

class _KurlyBannerItemState extends State<KurlyBannerItem> {
  ///banner.text파일에서 만든 샘플 데이터 입니다.
  final List<HomeBanner> list = homeBannerList;

  /// 현재 페이지 뷰 색인을 저장하는 변수 입니다.
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(list[index].bannerImage),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                    top: 50,
                    left: 16,
                    child: BoxBorderText(
                      title: list[index].eventTitle,
                      subTitle: list[index].eventContent,
                    ))
              ],
            );
          },
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: NumberIndicator(
            currentPage: currentPage + 1,
            length: list.length,
          ),
        )
      ],
    );
  }
}
