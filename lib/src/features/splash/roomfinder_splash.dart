import 'package:flutter/material.dart';
import 'package:roomfinder/src/features/splash/misc/coach_models.dart';
import 'package:statusbarz/statusbarz.dart';

class RoomFinderSplash extends StatelessWidget {
  const RoomFinderSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Statusbarz.instance.refresh();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: coachList.length,
                shrinkWrap: true,
                primary: true,
                itemBuilder: (BuildContext context, int index) {
                  final CoachModel item = coachList[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(300.0),
                          child: Image.network(
                            item.image,
                            height: 75.0,
                            width: 75.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(item.name),
                                const Icon(
                                  Icons.image,
                                  size: 12.0,
                                )
                              ],
                            ),

                            // Horizontal scroll view

                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: 30.0,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                primary: false,
                                itemCount: item.courses.length,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    child: Text(
                                      item.courses[index],
                                      style: const TextStyle(fontSize: 24.0),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
