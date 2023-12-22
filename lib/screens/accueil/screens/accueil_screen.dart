import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../accueil.dart';

class AccueilScreen extends StatefulWidget {
  const AccueilScreen({super.key});

  @override
  State<AccueilScreen> createState() => _AccueilScreenState();
}

class _AccueilScreenState extends State<AccueilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(4.w),
        decoration: BoxDecoration(
          color: colorWhite,
          border: Border(
            top: BorderSide(
              color: colorGrey,
              width: 2,
            ),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5.w),
            topRight: Radius.circular(5.w),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Montant total",
                  style: TextStyle(
                    color: colorBlack,
                    fontWeight: FontWeight.normal,
                    fontSize: 11.sp,
                  ),
                ),
                Text(
                  "22.500 FCFA",
                  style: TextStyle(
                    color: colorTotal,
                    fontWeight: FontWeight.bold,
                    fontSize: 11.sp,
                  ),
                )
              ],
            ),
            Gap(2.h),
            SubmitButton(
              Constants.btnAffecte,
              couleur: colorButton,
              onPressed: () {
                showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: colorWhite,
                      surfaceTintColor: colorWhite,
                      title: Image.asset(
                        "assets/icons/alarm.png",
                        height: 10.h,
                      ),
                      content: Text(
                        "Êtes-vous sûr de vouloir affecter un pilote de livraison ?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: colorBlack,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          child: Text(
                            'Annuler',
                            style: TextStyle(
                              color: colorGrey,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          child: Text(
                            'Attribuer',
                            style: TextStyle(
                              color: colorButton,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const SuiviAccueilScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
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
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.refresh_outlined,
                    color: colorWhite,
                    size: 30.sp,
                  ),
                ),
              ),
            ),
            Gap(2.h),
            Expanded(
              child: ListView.separated(
                itemCount: 1,
                separatorBuilder: (BuildContext context, int index) => Gap(1.h),
                itemBuilder: (context, index) {
                  return Card(
                    surfaceTintColor: colorWhite,
                    color: colorWhite,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: colorGrey.withOpacity(.3),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailAccueilScreen(),
                          ),
                        );
                      },
                      leading: CircleAvatar(
                        backgroundColor: colorPrimary,
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          // Border radius
                          child: CircleAvatar(
                            backgroundColor: colorWhite,
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
                          color: colorBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                      ),
                      subtitle: Text(
                        "A livrer - 27 Oct 11:54",
                        style: TextStyle(
                          color: colorGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.sp,
                        ),
                      ),
                      trailing: Icon(
                        Icons.navigate_next_outlined,
                        color: colorBlack,
                      ),
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
