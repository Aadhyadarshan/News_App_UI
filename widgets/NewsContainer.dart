import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  final String imgurl;
  final String newsHead;
  final String newsDes;
  final String newsUrl;

  const NewsContainer({
    Key? key,
    required this.imgurl,
    required this.newsDes,
    required this.newsHead,
    required this.newsUrl,
  }) : super(key: key);
  
  get imgUrl => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width, // Adjust the width as needed
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Image.network(
            imgurl,
            height: 400, // Adjust the height as needed
             width: MediaQuery.of(context).size.width, 
             fit: BoxFit.cover),
          
Container(
  padding: EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
  
SizedBox(height: 20,),
          Text(newsHead, style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text(newsDes ,style: TextStyle(fontSize: 16),),
  ]),
),

          
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
  
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    print("Going to &newsUrl");
                  },
                  child: Text("Read More"),
                  
                ),
              ),
            ],
          ),
          SizedBox(height:20,),
        ],
      ),
    );
  }
}
