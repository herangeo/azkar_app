import 'package:flutter/material.dart';

class DisplayIdPage extends StatelessWidget {
  final int id;

  DisplayIdPage({required this.id});

  @override
  Widget build(BuildContext context) {
    String idText = '';
    String idtexteng = '';

    switch (id) {
      case 0:
        idText = '';
        break;
      case 1:
        idText = 'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، رَبِّ أَسْأَلُكَ خَيْرَ هَذَا الْيَوْمِ، فَتْحَهُ، وَنَصْرَهُ، وَنُورَهُ، وَبَرَكَتَهُ، وَهُدَاهُ، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِيهِ وَشَرِّ مَا بَعْدَهُ';
        idtexteng = 'We have entered a new day, and all sovereignty belongs to Allah. Praise be to Allah. There is no god but Allah alone, with no partner or associate. His is the dominion, to Him belongs all praise, and He is able to do all things. My Lord, I ask You for the goodness of this day, its triumphs, its light, its blessings, and its guidance. I seek refuge in You from the evil in it and the evil that follows it';
        break;
      case 2:
        idText = 'أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذِهِ اللَّيْلَةِ وَخَيْرَ مَا بَعْدَهَا، وَأَعُوذُ بِكَ مِنْ شَرِّ هَذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا';
        idtexteng = 'We have entered the evening, and all sovereignty belongs to Allah. Praise be to Allah. There is no god but Allah alone, with no partner or associate. His is the dominion, to Him belongs all praise, and He is able to do all things. My Lord, I ask You for the goodness of this night and the goodness that follows it. I seek refuge in You from the evil of this night and the evil that follows it.';
        break;
      case 3:
        idText = 'بِاسْمِكَ اللَّهُمَّ أَمُوتُ وَأَحْيَا';
        idtexteng = 'In Your name, O Allah, I die and I live.';
        break;
      case 4:
        idText = 'الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنَا وَسَقَانَا، وَكَفَانَا، وَآوَانَا، فَكَمْ مِمَّنْ لَا كَافِيَ لَهُ وَلَا مُؤْوِيَ';
        idtexteng = 'Praise be to Allah who has fed us and given us drink, and has sufficed us, and provided for us. How many are those who have no one to suffice them or provide for them';
        break;
      case 5:
        idText = 'سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ، أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ، أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ.';
        idtexteng = 'Glory be to You, O Allah, and praise be to You. I bear witness that there is no god but You. I seek Your forgiveness and repent to You';
        break;
      case 6:
        idText = 'اللهُ لا إِلَـٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ۚ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ ۗ مَن ذَا الَّذِي يَشْفَعُ عِندَهُ إِلَّا بِإِذْنِهِ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلَّا بِمَا شَاءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ ۖ وَلَا يَئُودُهُ حِفْظُهُمَا ۚ وَهُوَ الْعَلِيُّ الْعَظِيمُ';

        idtexteng = 'ملِكِ توم ألدِّين إيَّاكَ\n'
                    'اُلحمْدُ للَّه رَبّ اُلعلمِين\n'
                    'يسْمِ اللهِ الرَّحْم الرَّحِيمِ\n'
                    'أُهْدِنَا الصِرْطَ المُسْتَقِيم\n'
                    'نَعْبُدُ وَإيَّاكَ تَسْتَعِينُ\n'
                    'بِّ\n'
                    'فَلمّا\n'
                    'الرَّحْمنِ الرَّحِيمِ\n'
                    'صِرط الذِينَ أنْعَمْتَ عَليْهمْ عَيْر المَعْضُوبٍ عَليْهمْ\n'
                    'وَلَا الضالِّين\n'
                    'اللهُ لآ إله إلَّا هُوَ الحَيُّ ألقيُّومُّ لا تأْحِدْةُ سِنَة وَلا تومُّ لَهُ مَا فِي السَّمْوْتِ وَمَا فِي الأرْضُِّ مَن ذا ألَّذِي\n'
                    'يَشْفَعُ عِندَةُ إلا بإذْيةً يَعْلمٌ مَا بَيْنَ أبْدِيهِمْ وَمَا حَلْفَهُمٌ وَلا يُحِيطُونَ يشيْ؛ مِّنْ عِلْمةٍ إلا يمَا شآءُ وَسِعَ\n'
                    'كُرْسِيُّةُ السَّمَوتِ وَالأَرْضّ وَلا يُودَّةُ حِفْظهُمَاً وَهوَ العَلِيُّ العَظِيمُ\n'
                    'عامََ الرَّسُولُ يمآ أنزلَ إليْهِ مِن رَبِهَ وَالمُوْمِنُونْ كُلٍّ ءامَنَ باللهِ وَمَلْئِكّتهٍ وَكْتَبهٍ وَرُسُلِهِ لا تُقرّقُ بيْ أحد مِّن\n'
                    'رَسُلةٍ وَقالُوا سَمِعْنا وَأَطَعْناً غفَّرَاتكَ رَبّنَا وَإلبْكَ المصِيرُ لا يُكلِّفُ اللهُ تَفْسًا إلَّا وسِعَهَاً لهَا مَا كَسَبَتْ\n'
                    'وَعَلَيْهَا مَا أكتسَبَب رَبَّنَا لا تُوَاحِذْنا إن تَّسِينا أوْ أَخْطأْتَاْ ربَّنَا وَلا تَحْمِلُ عَليْنآ إصْرا كُمَا حَمَلَّتةُ عَلَى الذِينَ مِن\n'
                    'قبْلِنَاً رَبَّنا وَلا تُحَمِّلْنا مّا لا طاقة لنا يهَ وَأعْفُ عَنَّا وَأغْفِرْ لنا وَأرْحمْنَأ أَنتَ مَوْلننَا فَأنصُرْنًا عَلى\n'
                    'القوْمِ اُلكْفِرِين\n'
                    'فوقع الحقُّ وَتطَلّ ما كانُواْ يَعْمَلُونَ\n'
                    'قالوا عامنا يربّ العلمين\n'
                    'مُوسَىْ وَهَرُونَ\n'
                    'قَلِمًا جَاءَ السَّجرَةُ قالِ لهُم مُوسَىٌ ألقُواْ مَآ أنتم مُلْقُونَ\n'
                    'أَلْقواْ قال مُوسَى مَا حِنْتم بهِ السِحُرُّ إنّ اللّة سيُبْطِلةُ إنَّ الله لا يُصلِحُ عمَلَ المُفْسِدِينَ وَيُحِقُّ أللهُ\n'
                    'الحقَّ بِكلِمْتهَ وَلوْ كرة المُجْرمُون\n'
                    'وَالصنَّقْتِ صَقًّا فالرَّحِزتِ رَجْرًا قَالتّلِيتِ ذِكْرًا إنَّ إلَهَكُمْ لوحِدٌ رَبُّ السَّمُوُتِ وَالأرْضِ وَمّا\n'
                    'لَا\n'
                    'دُخُورا وَلَهُمْ عَدّابٌ وَاصِبٌ إلا مَنْ خَطِفَ\n'
                    'الخَطْفة فاتبعَهُ شِهَابٌ تَاقِب\n'
                    'وَأَوْحَيّْنا إلَى مُوسىٌ أَنْ ألق عصاكٌّ فإذا هِي تَلْقفُ مَا يأْفِكُوتَ\n'
                    'فَعْلِيُواْ هُتَالِكَ وَأنقلبُواْ صعِرينَ وَألْقِيَّ السَّحَرَةُ سُجِدِينَ\n'
                    'وَقال فِرْعَوْنُ أتْتُونِي يكُلّ شجِرٍ عَلِيمِي\n'
                    'بيْتَهُمَا وَربُّ المِشرق إنَّا زَيَّنَا ألسَّمَاءَ الدُّنْيا بزينَةِ الكَوَاكِب وَحِفْظًا مِّن كُلِّ شَيْطَنِ مَّارد\n'
                    'يَسَّمَّعُونَ إلى ألمَلاِ الأعْلى وَيُقْدَفُونَ مِن كُلِّ جَايِب\n'
                    'وَلا انتمْ\n'
                    'قُلْ أعُوذُ يرَبّ النَّاس مَلِكِ ألنَّاس إلهِ ألتَّاسِ مِن شر الوَسوَاسِ الخَتَّاس\n'
                    'صُدُّور التَّاسِ\n'
                    'أوْلَئكَ عَلَيْهمْ صلوُتٌ مِّن رَبِّهمْ وَرَحْمَةٌ وَأوْليِكَ هُمُ\n'
                    'المُهْتَدُونَ\n'
                    'وَلاَ أنتمْ غيدُونَ مَآ أَعْبُدُ وَلاَ أَتأْ عَايدٌ مَّا عَتِدتَّمْ\n'
                    'عيدُونَ مَآ أَعْبُدُ لَكُمْ دِينُكُمْ وَلِيَ دِين\n'
                    'قُلْ هُوَ اللّهُ أَخدُ اللهُ الصَّمَدُ لمْ يَلِدْ وَلمْ يُولدْ وَلمْ يَكْن لَّةُ كُفُوَا أَخدُّ\n'
                    'قُلْ أعُوذُ يرَبّ القلق مِن شرّ مَا خَلقَ وَمِن شرّ عَاسِقٍ إدا وَقبَ وَمِن شر ألنَّفْتْتِ فِي العْقدِ\n'
                    'وَمِن شرّ حَاسِدٍ إذا حَسّد\n'
                    'اَلَّذِي يُوَسُوسُ فِي\n'
                    'مِنَ الجنَّةِ وَالتّاسِ\n'
                    'فإنْ عَامَتُوا يمِثل ماءامنتم بهً ققدٍ أهتدواً وَإن تَولَّواٍ فَائَمَا هُمّ فِي شِقاقٌّ فستكفِيكهْم اللهُ وَهوَ السَّمِيعُ\n'
                    'العَليمُ صِبْعَة اللهِ وَمَنْ أحْسَنُ مِنَ اللهِ صِبْعَةُ وَنَحْنُ لهُ غيدُونَ\n'
                    'وَلتبْلْوَتَّكُم يشي؛ مِنَ الخَوْفِ وَالجُوعِ وَتَقْص مِّنَ الأمْول وَالأنفُسِ وَالتَّمَزتُ وَتَشرِ ألصَّيرِينَ مم الّذِينَ إِذآ\n'
                    'أصبَتْهُم مَّصِيبَةٌ قالْوَاْ إنَّا للَّهِ وَإنَا إليْهِ زُجِعُونَ\n'
                    'يَأيُّهَا النَّاسُ قدْ جاءتكُم مَوْعِظةٌ مِّن رَيَّكُمْ وَشِفاء لِمَا فِي أُلصَّدُور وَهُذْى وَرَحْمَةٌ لِلْمُؤمِنِينَ قُلْ يفَضْلِ\n'
                    'الله ويرَحْمَيهِ فَيذلَ على هِيثَّاً فَوقَ كُلِّ شَيْءٍ عَلِيمٍ أفَيْشْرَوُنَ عَلَى حَقِّ اللهِ وَأنتُمْ تَعْلَمُونَ\n'
                    'وَلا تَكُونُوا كَالَّذِينَ نسُوا اللهَ فَأنسَهُمْ أنفسَهُمْ أُلئَكَ هُمُ الفَاسِقُونَ لا يسُوي الأشيَاءُ كُلُّمَا يُصابُ\n'
                    'بِها وَمَا هُم بِمُعْجِزِينَ قُلْ يرَبّ ألمَلِكِ ألملكِ تؤْتِي المُلكَ مَن تَشاءُ وَتنزعُ المُلكَ مِمَّن تشاءُ وَتعِزُّ مَن تشَاءُ وَتُذِلُّ مَن\n'
                    'تشَاءُ بيْدكَ الخَيرُ إنَّكَ عَلى كلِّ شَيْءٍ قديرٍ أليُمَا شاءُ اللهُ لا قُوَةَ إلا باللهِ وَاللهُ بكل شَيْءٍ عَلِيم\n'
                    'سَبْحَانَ الَّذِي أسْرَى بِعَبْدِهِ لَيْلًا مِّنَ الْمَسْجِدِ الْحَرَامِ إِلَى الْمَسْجِدِ الأَقْصَى الَّذِي بَارَكْنَا حَوْلَهُ لِنُرِيَهُ مِنْ آيَاتِنَا إِنَّهُ هُوَ السَّمِيعُ الْبَصِيرُ\n'
                    'سَبْحَانَ الَّذِي أسْرَى بِعَبْدِهِ لَيْلًا مِّنَ الْمَسْجِدِ الْحَرَامِ إِلَى الْمَسْجِدِ الأَقْصَى الَّذِي بَارَكْنَا حَوْلَهُ لِنُرِيَهُ مِنْ آيَاتِنَا إِنَّهُ هُوَ السَّمِيعُ الْبَصِيرُ\n'
                    'الْحَمْدُ لِلَّهِ الَّذِي أَوْحَى إِلَى عَبْدِهِ الْكِتَابَ وَلَمْ يَجْعَل لَّهُ عِوَجًا\n'
                    'قَيِّمًا لِّيُنذِرَ بَأْسًا شَدِيدًا مِّن لَّدُنْهُ وَيُبَشِّرَ الْمُؤْمِنِينَ الَّذِينَ يَعْمَلُونَ الصَّالِحَاتِ أَنَّ لَهُمْ أَجْرًا حَسَنًا\n'
                    'مَّاكِثِينَ فِيهِ أَبَدًا وَيُنذِرَ الَّذِينَ قَالُوا اتَّخَذَ اللَّهُ وَلَدًا\n'
                    'مَّا لَهُم بِهِ مِنْ عِلْمٍ وَلَا لِآبَائِهِمْ كَبُرَتْ كَلِمَةً تَخْرُجُ مِنْ أَفْوَاهِهِمْ إِن يَقُولُونَ إِلَّا كَذِبًا\n'
                    'فَلَعَلَّكَ بَاخِعٌ نَّفْسَكَ عَلَى آثَارِهِمْ إِن لَّمْ يُؤْمِنُوا بِهَذَا الْحَدِيثِ أَسَفًا\n'
                    'إِنَّا جَعَلْنَا مَا عَلَى الْأَرْضِ زِينَةً لَّهَا لِنَبْلُوَهُمْ أَيُّهُمْ أَحْسَنُ عَمَلًا\n'
                    'وَإِنَّا لَجَاعِلُونَ مَا عَلَيْهَا صَعِيدًا جُرُزًا\n'
                    'أَمْ حَسِبْتَ أَنَّ أَصْحَابَ الْكَهْفِ وَالرَّقِيمِ كَانُوا مِنْ آيَاتِنَا عَجَبًا\n'
                    'إِذْ أَوَى الْفِتْيَةُ إِلَى الْكَهْفِ فَقَالُوا رَبَّنَا آتِنَا مِن لَّدُنكَ رَحْمَةً وَهَيِّئْ لَنَا مِنْ أَمْرِنَا رَشَدًا\n'
                    'فَضَرَبْنَا عَلَى آذَانِهِمْ فِي الْكَهْفِ سِنِينَ عَدَدًا\n'
                    'ثُمَّ بَعَثْنَاهُمْ لِنَعْلَمَ أَيُّ الْحِزْبَيْنِ أَحْصَى لِمَا لَبِثُوا أَمَدًا\n'
                    'نَحْنُ نَقُصُّ عَلَيْكَ نَبَأَهُم بِالْحَقِّ إِنَّهُمْ فِتْيَةٌ آمَنُوا بِرَبِّهِمْ وَزِدْنَاهُمْ هُدًى\n'
                    'وَرَبَطْنَا عَلَى قُلُوبِهِمْ إِذْ قَامُوا فَقَالُوا رَبُّنَا رَبُّ السَّمَاوَاتِ وَالْأَرْضِ لَن نَّدْعُوَ مِن دُونِهِ إِلَهًا لَّقَدْ قُلْنَا إِذًا شَطَطًا\n'
                    'هَؤُلَاء قَوْمُنَا اتَّخَذُوا مِن دُونِهِ آلِهَةً لَّوْلَا يَأْتُونَ عَلَيْهِم بِسُلْطَانٍ بَيِّنٍ فَمَنْ أَظْلَمُ مِمَّنِ افْتَرَى عَلَى اللَّهِ كَذِبًا\n'
                    'وَإِذِ اعْتَزَلْتُمُوهُمْ وَمَا يَعْبُدُونَ إِلَّا اللَّهَ فَأْوُوا إِلَى الْكَهْفِ يَنشُرْ لَكُمْ رَبُّكُم مِّن رَّحْمَتِهِ وَيُهَيِّئْ لَكُم مِّنْ أَمْرِكُم مِّرْفَقًا\n'
                    'وَتَرَى الشَّمْسَ إِذَا طَلَعَت تَّزَاوَرُ عَن كَهْفِهِمْ ذَاتَ الْيَمِينِ وَإِذَا غَرَبَت تَّقْرِضُهُمْ ذَاتَ الشِّمَالِ وَهُمْ فِي فَجْوَةٍ مِّنْهُ ذَلِكَ مِنْ آيَاتِ اللَّهِ مَن يَهْدِ اللَّهُ فَهُوَ الْمُهْتَدِ وَمَن يُضْلِلْ فَلَن تَجِدَ لَهُ وَلِيًّا مُّرْشِدًا\n'
                    'وَتَحْسَبُهُمْ أَيْقَاظًا وَهُمْ رُقُودٌ وَنُقَلِّبُهُمْ ذَاتَ الْيَمِينِ وَذَاتَ الشِّمَالِ وَكَلْبُهُم بَاسِطٌ ذِرَاعَيْهِ بِالْوَصِيدِ لَوِ اطَّلَعْتَ عَلَيْهِمْ لَوَلَّيْتَ مِنْهُمْ فِرَارًا وَلَمُلِئْتَ مِنْهُمْ رُعْبًا\n'
                    'وَكَذَلِكَ بَعَثْنَاهُمْ لِيَتَسَاءَلُوا بَيْنَهُمْ قَالَ قَائِلٌ مِّنْهُمْ كَمْ لَبِثْتُمْ قَالُوا لَبِثْنَا يَوْمًا أَوْ بَعْضَ يَوْمٍ قَالُوا رَبُّكُمْ أَعْلَمُ بِمَا لَبِثْتُمْ فَابْعَثُوا أَحَدَكُم بِوَرِقِكُمْ هَذِهِ إِلَى الْمَدِينَةِ فَلْيَنظُرْ أَيُّهَا أَزْكَى طَعَامًا فَلْيَأْتِكُم بِرِزْقٍ مِّنْهُ وَلْيَتَلَطَّفْ وَلَا يُشْعِرَنَّ بِكُمْ أَحَدًا\n'
                    'إِنَّهُمْ إِن يَظْهَرُوا عَلَيْكُمْ يَرْجُمُوكُمْ أَوْ يُعِيدُوكُمْ فِي مِلَّتِهِمْ وَلَن تُفْلِحُوا إِذًا أَبَدًا\n'
                    'وَكَذَلِكَ أَعْثَرْنَا عَلَيْهِمْ لِيَعْلَمُوا أَنَّ وَعْدَ اللَّهِ حَقٌّ وَأَنَّ السَّاعَةَ لَا رَيْبَ فِيهَا إِذْ يَتَنَازَعُونَ بَيْنَهُمْ أَمْرَهُمْ فَقَالُوا ابْنُوا عَلَيْهِم بُنْيَانًا رَّبُّهُمْ أَعْلَمُ بِهِمْ قَالَ الَّذِينَ غَلَبُوا عَلَى أَمْرِهِمْ لَنَتَّخِذَنَّ عَلَيْهِم مَّسْجِدًا\n'
                    'سَيَقُولُونَ ثَلَاثَةٌ رَّابِعُهُمْ كَلْبُهُمْ وَيَقُولُونَ خَمْسَةٌ سَادِسُهُمْ كَلْبُهُمْ رَجْمًا بِالْغَيْبِ وَيَقُولُونَ سَبْعَةٌ وَثَامِنُهُمْ كَلْبُهُمْ قُل رَّبِّي أَعْلَمُ بِعِدَّتِهِم مَّا يَعْلَمُهُمْ إِلَّا قَلِيلٌ فَلَا تُمَارِ فِيهِمْ إِلَّا مِرَاء ظَاهِرًا وَلَا تَسْتَفْتِ فِيهِم مِّنْهُمْ أَحَدًا\n'
                    'وَلَا تَقُولَنَّ لِشَيْءٍ إِنِّي فَاعِلٌ ذَلِكَ غَدًا\n'
                    'إِلَّا أَن يَشَاء اللَّهُ وَاذْكُر رَّبَّكَ إِذَا نَسِيتَ وَقُلْ عَسَى أَن يَهْدِيَنِ رَبِّي لِأَقْرَبَ مِنْ هَذَا رَشَدًا\n'
                    'وَلَبِثُوا فِي كَهْفِهِمْ ثَلَاثَ مِائَةٍ سِنِينَ وَازْدَادُوا تِسْعًا\n'
                    'قُلِ اللَّهُ أَعْلَمُ بِمَا لَبِثُوا لَهُ غَيْبُ السَّمَاوَاتِ وَالْأَرْضِ أَبْصِرْ بِهِ وَأَسْمِعْ مَا لَهُم مِّن دُونِهِ مِن وَلِيٍّ وَلَا يُشْرِكُ فِي حُكْمِهِ أَحَدًا\n'
                    'وَاتْلُ مَا أُوحِيَ إِلَيْكَ مِن كِتَابِ رَبِّكَ لَا مُبَدِّلَ لِكَلِمَاتِهِ وَلَن تَجِدَ مِن دُونِهِ مُلْتَحَدًا\n'
                    'وَاصْبِرْ نَفْسَكَ مَعَ الَّذِينَ يَدْعُونَ رَبَّهُم بِالْغَدَاةِ وَالْعَشِيِّ يُرِيدُونَ وَجْهَهُ وَلَا تَعْدُ عَيْنَاكَ عَنْهُمْ تُرِيدُ زِينَةَ الْحَيَاةِ الدُّنْيَا وَلَا تُطِعْ مَنْ أَغْفَلْنَا قَلْبَهُ عَن ذِكْرِنَا وَاتَّبَعَ هَوَاهُ وَكَانَ أَمْرُهُ فُرُطًا\n'
                    'وَقُلِ الْحَقُّ مِن رَّبِّكُمْ فَمَن شَاءَ فَلْيُؤْمِن وَمَن شَاءَ فَلْيَكْفُرْ إِنَّا أَعْتَدْنَا لِلظَّالِمِينَ نَارًا أَحَاطَ بِهِمْ سُرَادِقُهَا وَإِن يَسْتَغِيثُوا يُغَاثُوا بِمَاء كَالْمُهْلِ يَشْوِي الْوُجُوهَ بِئْسَ الشَّرَابُ وَسَاءَتْ مُرْتَفَقًا\n';
        break;
      case 7:
        idText = 'Azkar, the remembrance of Allah in Islam, offers a multitude of benefits for individuals on both spiritual and psychological levels. Engaging in Azkar cultivates a profound connection with the Divine, fostering inner peace and tranquility amid lifes challenges. Through constant remembrance, Muslims find solace and strength, feeling protected from negative influences while deepening their gratitude for Allahs blessings, no matter how small. This practice acts as a shield against stress and anxiety, instilling a sense of mindfulness and focus as believers strive to be fully present in each moment.';
        idtexteng = 'Moreover, Azkar serves as a communal practice, bonding individuals together in shared devotion and unity. Whether recited individually or in congregation, Azkar reinforces a sense of belonging within the Muslim community, nurturing spiritual growth and collective elevation. Beyond its immediate benefits, Azkar holds the promise of rewards in the Hereafter, encouraging believers to persevere in their remembrance of Allah and guiding them towards self-improvement and reflection. Overall, Azkar stands as a cornerstone of Islamic faith, enriching the lives of believers and drawing them closer to the source of all peace and guidance.';
        break;
      case 8:
        idText = 'Eight';
        idtexteng = '';
        break;
      case 9:
        idText = 'Nine';
        idtexteng = '';
        break;
      case 10:
        idText = 'Ten';
        idtexteng = '';
        break;
      default:
        idText = 'Invalid ID';
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 241, 200),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 198, 241, 200),
        title: Text(''),
        leading: IconButton(onPressed: ()
        {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios,color: Colors.green,),),
      ),
      body:
       Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
              ),

              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      idText,
                      style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.green),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 25,),
                    Text(
                      idtexteng,
                      style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color:Colors.green),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
