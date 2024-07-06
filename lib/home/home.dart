import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Map<String, String>> imgList = [
    {
      'image': 'assets/images/slides/slide1.png',
      'title': 'مرحبا بكم في التسويق والمبيعات',
      'description':
          'اضمن نجاح علامتك التجارية وسرعة انتشارها باستخدامك أحد خياراتنا الرقمية الإبداعية والمبتكرة، واترك العمل لنا.',
    },
    {
      'image': 'assets/images/slides/slide2.png',
      'title': 'مرحبا بكم في التسويق والمبيعات',
      'description':
          'مش معنى انك بتحقق مبيعات مرضية عن طريق Social Media Platform إذا كان ده كافي!!! التسويق و البيزنس مفهوش كفاية .. انت محتاج تشتغل على كافة المنصات وتستغل كافة الادوات التسويقية اللي تساعدك ع النجاح',
    },
    {
      'image': 'assets/images/slides/slide3.png',
      'title': 'نبني مشروعك من الفكرة وحتى التنفيذ',
      'description':
          'اضمن نجاح علامتك التجارية وسرعة انتشارها باستخدامك أحد خياراتنا الرقمية الإبداعية والمبتكرة، واترك العمل لنا.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Center(
          child: Text(
            'الرئيسية',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffffffff),
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: imgList.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            item['image']!,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                          ),
                          SizedBox(height: 10),
                          Text(
                            item['title']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            item['description']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff94a3b1),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0ea2bd),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        2.0), // Custom button border radius
                  ),
                  // Background color of the button
                ),
                onPressed: () {
                  // Add your button's onPressed functionality here
                },
                child: Text(
                  'تواصل معنا',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((url) {
                  int index = imgList.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? Color(0xff0ea2bd)
                          : Colors.grey,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 25,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.signal_cellular_alt,
                            color: Color(0xFF00BCD4), // Cyan color
                            size: 40.0,
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'ادارة الاعمال والمشاريع',
                            style: TextStyle(
                              color: Color(0xFF00BCD4), // Cyan color
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'نجاح اي مشروع تجاري يعتمد على العديد من العوامل ولكن هناك بعض النصائح العامة التي يمكن ان تساعدك في ادارة الاعمال والمشاريع.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 25,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Color(0xFF00BCD4), // Cyan color
                            size: 40.0,
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'حملات اعلانية جذابة',
                            style: TextStyle(
                              color: Color(0xFF00BCD4), // Cyan color
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'نقدم دعاية مبتكرة تحقق هدفك وتناسب ذائقة المستهدف.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 25,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.wifi,
                            color: Color(0xFF00BCD4), // Cyan color
                            size: 40.0,
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'احترافية التسويق الرقمي',
                            style: TextStyle(
                              color: Color(0xFF00BCD4), // Cyan color
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'نستهدف احدث التقنيات للترويج لعملك في كافة المواقع الالكترونية ووسائل التواصل لتكون الاول في محركات البحث.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 25,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Color(0xFF00BCD4), // Cyan color
                            size: 40.0,
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'تطوير مستوى الأعمال',
                            style: TextStyle(
                              color: Color(0xFF00BCD4), // Cyan color
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'ستهدف علامتك التجارية لتطويرها من خلال وضع استراتيجية تسويقية تبرز مواطن القوة وتخلصك من نقاط الضعف.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
