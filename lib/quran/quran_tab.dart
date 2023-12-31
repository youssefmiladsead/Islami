import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/My_Them.dart';
import 'package:islami/quran/item_sura_name.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class QuranTab extends StatelessWidget {
  List<String> Names = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);

    return Center(
      child: Column(
        children: [
          Expanded(flex: 1, child: Image.asset('assets/image/quran_image.png')),
          Divider(
            color: provider.appTheme == ThemeMode.dark
                ? MyTheme.yellowColor
                : Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text(
            AppLocalizations.of(context)!.sura_name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Divider(
            color: provider.appTheme == ThemeMode.dark
                ? MyTheme.yellowColor
                : Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Expanded(
            flex: 3,
            //بنعملها في اكسبندد علشان تعرف تتحرك في محيط معين
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ItemSuraName(
                  name: Names[index],
                  index: index,
                );
                //ناكسس ال list
              },
              itemCount: Names.length,
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: provider.appTheme == ThemeMode.dark
                      ? MyTheme.yellowColor
                      : Theme.of(context).primaryColor,
                  thickness: 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
