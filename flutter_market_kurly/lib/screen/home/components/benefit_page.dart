

import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/screen/home/components/benefit_banner.dart';
import 'package:flutter_market_kurly/theme.dart';

class BenefitPage extends StatefulWidget {

  @override
  State<BenefitPage> createState() => _BenefitPageState();
}

class _BenefitPageState extends State<BenefitPage> {
  Future _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
  }
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView.builder(itemBuilder: (context, index)
        => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            padding: EdgeInsets.only(left: 22),
            ///색상을 동적으로 보여주기 위한 코드?

            color: Color(0xeff4e4da * (index + 1)),
          height: 140,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      "${benefitBannerList[index].title}",
                      style: textTheme().bodyText2,
                    ),
                    Text("${benefitBannerList[index].benefit}",
                    style: textTheme().bodyText2!.copyWith(fontWeight:
                    FontWeight.bold),
                    ), const Spacer(),
                  ],
                ),
                const Spacer(),
                Image.asset(
                  benefitBannerList[index].image,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width:  22,)
              ],
            ),
          ),
        ),
        itemCount: benefitBannerList.length,
        ),

      );
  }
}
