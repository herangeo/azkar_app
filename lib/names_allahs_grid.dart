import 'package:flutter/material.dart';



class AllahNamesScreen extends StatelessWidget {


  final List<String> allahNames = [
    "الرحمن (الرحيم)",
    "الملك (السيد)",
    "القدوس (المقدس)",
    "السلام (مصدر السلام)",
    "المؤمن (حافظ الإيمان)",
    "المهيمن (الحافظ، الحافظ)",
    "العزيز (العزيز)",
    "الجبار (المكرم)",
    "المتكبر (المهيمن)",
    "الخالق (الخالق)",
    "الباري (المبتكر)",
    "المصور (المصمم)",
    "الغفار (المغفرة)",
    "القهار (المسيطر)",
    "الوهاب (المانح)",
    "الرزاق (المزود)",
    "الفتاح (المفتاح)",
    "العليم (العالم)",
    "القابض (المقيد)",
    "الباسط (الموسع)",
    "الخافض (المخفض)",
    "الرافع (المرتفع)",
    "المعز (العظيم)",
    "المذل (الممنح للذل)",
    "السميع (السامع)",
    "البصير (الرائع)",
    "الحكم (القاضي)",
    "العدل (العادل)",
    "اللطيف (الدقيق)",
    "الخبير (المطلع)",
    "الحليم (الصبور)",
    "العظيم (العظيم)",
    "الغفور (الغفور)",
    "الشكور (المقدر)",
    "العلي (الأعلى)",
    "الكبير (العظيم)",
    "الحفيظ (الحفاظ)",
    "المقيت (المغذي)",
    "الحسيب (المحاسب)",
    "الجليل (المهيمن)",
    "الكريم (الكريم)",
    "الرقيب (الحذر)",
    "المجيب (المتجاوب)",
    "الواسع (الشامل)",
    "الحكيم (الحكم)",
    "الودود (المحب)",
    "المجيد (المجيد)",
    "الباعث (الباعث)",
    "الشاهد (الشاهد)",
    "الحق (الحق)",
    "الوكيل (الموكل)",
    "القوي (القوي)",
    "المتين (المتين)",
    "الولي (الصديق)",
    "الحميد (المحمود)",
    "المحصي (المحصي)",
    "المبدئ (المبدئ)",
    "المعيد (المعيد)",
    "المحيي (معطي الحياة)",
    "المميت (المأخذ للحياة)",
    "الحي (الحي)",
    "القيوم (المعيشة الذاتية)",
    "الواجد (الموجد)",
    "المجيد (المجيد)",
    "الواحد (الفريد)",
    "الأحد (الواحد)",
    "الصمد (الأبدي)",
    "القادر (القادر)",
    "المقتدر (القوي)",
    "المقدم (المبكر)",
    "المؤخر (المتأخر)",
    "الأول (الأول)",
    "الآخر (الأخير)",
    "الظاهر (الواضح)",
    "الباطن (المخفي)",
    "الولي (الراعي)",
    "المتعالي (الأعلى)",
    "البر (مصدر الخير)",
    "التواب (العائد دائمًا)",
    "المنتقم (المنتقم)",
    "العفو (العفو)",
    "الرؤوف (الرؤوف)",
    "مالك الملك (صاحب السيادة)",
    "ذو الجلال والإكرام (صاحب العظمة والشرف)",
    "المقسط (المنصف)",
    "الجامع (الجامع)",
    "الغني (الغني)",
    "المغني (المثري)",
    "المانع (المانع)",
    "الضار (المحزن)",
    "النافع (المفيد)",
    "النور (النور)",
    "الهادي (الهادي)",
    "البديع (اللا مثيل)",
    "الباقي (الأبدي)",
    "الوارث (الوريث)",
    "الرشيد (المهتدي)"
    "الصبور (الصبور)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 198, 241, 200) ,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 198, 241, 200),
        title: const Text('99 أسماء الله الحسنى',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.green,), onPressed: () { 
          Navigator.pop(context);
         },),
      ),
body: Padding(
  padding: const EdgeInsets.all(8.0), // Add padding around the GridView
  child: GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 8.0, 
      mainAxisSpacing: 8.0, 
    ),
    itemCount: allahNames.length,
    itemBuilder: (BuildContext context, int index) {
      return GridTile(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0), // Increase border radius
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                allahNames[index],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.green),
              ),
            ),
          ),
        ),
      );
    },
  ),
),

    );
  }
}
