import 'package:flutter/material.dart';
import 'package:news_app_ui/features/news/views/screens/news_home/widgets/news_carousel.dart';
import 'package:news_app_ui/features/news/views/screens/news_home/widgets/trending_news.dart';

class NewsHomescreen extends StatelessWidget {
  const NewsHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.grey.shade100,
      appBar: AppBar( backgroundColor: Colors.grey.shade100,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 30,
              color: Colors.blueAccent,
            )),
      ),
      bottomNavigationBar: 
      Container(
    
        decoration: BoxDecoration(color: Colors.grey.shade100,
          
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25) , topRight: Radius.circular(25)),
          child: BottomNavigationBar( backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
      items: [
        BottomNavigationBarItem(
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.home)) , label: "Home"),
        BottomNavigationBarItem(icon: IconButton(onPressed: () {}, icon: Icon(Icons.search) ) , label: "Search")
      ]))), 

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 15),
              child: Text(
                "Home",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 220,
              child: NewsCarousel(),
            ),
            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View More",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 13.0, right: 13),
              child: SizedBox(height: 300, child: TrendingNews()),
            )
          ],
        ),
      ),
    );
  }
}
