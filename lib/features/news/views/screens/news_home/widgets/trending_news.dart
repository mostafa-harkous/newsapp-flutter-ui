import 'package:flutter/material.dart';
import 'package:news_app_ui/features/news/data/trednding_list.dart';

class TrendingNews extends StatelessWidget {
  const TrendingNews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: trendingList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            trendingList[index].image,
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            trendingList[index].title,
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(trendingList[index].date , style: TextStyle(color: Colors.blue , fontWeight: FontWeight.bold),)
                      
                      ],
                    )
                  ],
                )),
          );
        });
  }
}
