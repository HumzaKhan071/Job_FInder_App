import 'package:flutter/material.dart';

class SearchOptions extends StatefulWidget {
  @override
  _SearchOptionsState createState() => _SearchOptionsState();
}

class _SearchOptionsState extends State<SearchOptions> {
  final optionMap = <String, bool>{
    "Development": true,
    "Buisness": false,
    "Data": false,
    "Design": false,
    "Opertaion": false,
  };
  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();
    return Container(
      height: 25,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    var res = optionMap[keys[index]] ?? false;
                    optionMap[keys[index]] = !res;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: optionMap[keys[index]] != null &&
                              optionMap[keys[index]] == true
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border:
                          Border.all(color: Theme.of(context).primaryColor.withOpacity(0.5))),
                  child: Row(
                    children: [
                      Text(
                        keys[index],
                        style: TextStyle(
                          fontSize: 12,
                          color: optionMap[keys[index]] != null &&
                                  optionMap[keys[index]] == true
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      if (optionMap[keys[index]] != null &&
                          optionMap[keys[index]] == true)
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.close, size: 15, color: Colors.white)
                          ],
                        )
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: optionMap.length),
    );
  }
}
