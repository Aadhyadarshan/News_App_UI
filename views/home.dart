import 'package:flutter/material.dart';
import 'package:newsapp/widgets/NewsContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0), // Change initialPage value if needed
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return NewsContainer(imgurl: "https://media.istockphoto.com/id/1398473177/photo/questionnaire-with-checkboxes-filling-survey-form-online-answer-questions.jpg?s=1024x1024&w=is&k=20&c=A38N141knXQRDuPUZCsj_dIKkJa-pnsT_lz3QK3_6n4=", newsDes: "5G is the beginning of an infinite sky of opportunities… With speeds multiple times faster than 4G and lag-free connectivity, 5G can enable billions of connected devices to share data in real time", newsHead: "5G In India", newsUrl:"https://www.hindustantimes.com/india-news/indias-5g-is-indigenous-can-provide-to-other-countries-sitharaman-101665705940020.html#:~:text=%E2%80%9C5G%20is%20the%20beginning%20of,share%20data%20in%20real%20time.");
        },
      ),
    );
  }
}
