import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';

class SuiviAccueilScreen extends StatefulWidget {
  const SuiviAccueilScreen({super.key});

  @override
  State<SuiviAccueilScreen> createState() => _SuiviAccueilScreenState();
}

class _SuiviAccueilScreenState extends State<SuiviAccueilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(3.w),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/fond1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: colorWhite,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 13,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 15.sp,
                        backgroundColor: colorWhite,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          // Border radius
                          child: CircleAvatar(
                            radius: 15.sp,
                            backgroundColor: colorGrey,
                            child: Image.asset(
                              "assets/images/commande.png",
                              height: 3.h,
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        "#QFRSF771230ML",
                        style: TextStyle(
                          color: colorWhite,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "27 Oct 2023 - 11:50",
                        style: TextStyle(
                          color: colorWhite,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 20.h,
              color: colorGrey,
              child: Text("Google Maps"),
            ),
            Gap(2.h),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return TimelineTile(
                    axis: TimelineAxis.vertical,
                    indicatorStyle: IndicatorStyle(
                      color: colorPrimary,
                      height: 40,
                      width: 40,
                      iconStyle: IconStyle(
                        color: Colors.white,
                        iconData: index == 0
                            ? Icons.check_circle
                            : Icons.radio_button_checked,
                      ),
                    ),
                    isFirst: true,
                    afterLineStyle: LineStyle(
                      color: index > 0 ? Colors.grey : Colors.green,
                    ),
                    alignment: TimelineAlign.start,
                    endChild: Row(
                      children: [
                        Gap(4.w),
                        Expanded(
                          child: index == 0 ? Card(
                            color: colorWhite,
                            surfaceTintColor: colorWhite,
                            child: Padding(
                              padding: EdgeInsets.all(2.w),
                              child: Text(
                                index == 0
                                    ? "John Doe est sur le chemin du restaurant "
                                        "pour récupérer la commande"
                                    : "John Doe a récupéré  la commande. "
                                        "Il est en route pour la livraison",
                                style: TextStyle(
                                  color: index == 0 ? colorGrey : colorBlack,
                                  fontWeight: index == 0
                                      ? FontWeight.normal
                                      : FontWeight.bold,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ) : Padding(
                            padding: EdgeInsets.all(1.w),
                            child: Stack(
                              children: [
                                Card(
                                  margin: EdgeInsets.only(right: 6.w),
                                  color: colorWhite,
                                  surfaceTintColor: colorWhite,
                                  child: Padding(
                                    padding: EdgeInsets.all(2.w),
                                    child: Text("John Doe a récupéré  la commande. "
                                              "Il est en route pour la livraison",
                                      style: TextStyle(
                                        color: colorBlack,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: colorButton,
                                    radius: 18.sp,
                                    child: Container(
                                      padding: const EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 2,
                                          color: colorWhite,
                                        ),
                                      ),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.call_outlined,
                                          color: colorBlack,
                                          size: 15.sp,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
