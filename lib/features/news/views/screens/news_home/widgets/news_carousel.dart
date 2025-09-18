import 'package:flutter/material.dart';
import 'package:news_app_ui/features/news/data/carousel_list.dart';

class NewsCarousel extends StatelessWidget {
  const NewsCarousel({super.key});
  @override
  Widget build(BuildContext context) {
    return CarouselView(
      itemExtent: MediaQuery.of(context).size.width - 32,
      padding: const EdgeInsets.all(8),
      elevation: 4,
      itemSnapping: true,
      children: List.generate(carouselList.length, (int index) {
        return Stack(alignment: AlignmentGeometry.bottomLeft, children: [
          Container(
            height: 210,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(19)),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                carouselList[index].image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 30),
            child: Text(
              carouselList[index].title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 11),
            child: Text(
              carouselList[index].date,
              style: TextStyle(color: Colors.white, fontSize: 15 , fontWeight: FontWeight.w500),
            ),
          )
        ]);
      }),
    );
  }
}
