import 'package:flutter/material.dart';
import 'package:instgram_clone/core/utils/spacing.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  List<String> posts = [
    "assets/images/anxious.png",
    "assets/images/audiomack.png",
    "assets/images/energetic.png",
    "assets/images/happy.png",
    "assets/images/grateful.png",
    "assets/images/romance.png",
    "assets/images/romance.png",
    "assets/images/romance.png",
    "assets/images/relaxed.png",
   




  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             /// search Box
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      filled: false,
                      prefixIcon: Icon(Icons.search_rounded),
                      fillColor: Colors.black12,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
            ),
          ),

          verticalSpace(10),

           /// Grid view
          Expanded(
            child: GridView.builder(
              itemCount: posts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 4, crossAxisSpacing: 4),
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(posts[index]),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                          right: 0,
                          top: 10,
                          child: Image.asset(
                            "assets/icons/video (1).png",
                            height: 30,
                            width: 30,
                          )) ],
                  ),
                );
              },
            ),
          ),




          ],
        )
        
        ),
    );
  }
}