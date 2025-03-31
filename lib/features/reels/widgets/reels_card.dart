
import 'package:flutter/material.dart';

import 'package:instgram_clone/core/themes/styles.dart';
import 'package:video_player/video_player.dart';

class ReelsCard extends StatefulWidget {
  const ReelsCard({super.key});

  @override
  State<ReelsCard> createState() => _ReelsCardState();
}

class _ReelsCardState extends State<ReelsCard> {
  VideoPlayerController? videoPlayerController;

  int currentVideo = 0;

  /// here we create list of Shorts
  List<String> shortsVideo = [

    "assets/videos/december.mp4",
    "assets/videos/Main-mera-dil-aur-tum-ho-yahan-Visit.mp4",
    "assets/videos/reels.mp4",
    "assets/videos/SYSTEM.mp4",
    "assets/videos/Tera-Chehra-Jab-Nazar-Aaye.mp4",
    "assets/videos/video.mp4",


   
  ];

  @override
  void initState() {
     initialize();
    super.initState();
   
  }

  /// initialize player  function
  void initialize() {
    videoPlayerController =
        VideoPlayerController.asset(shortsVideo[currentVideo])
          ..initialize().then((_) {
            setState(() {});
            videoPlayerController!.play();
          });
  }

  /// create function for change shorts
  void changeShort(bool isNext) {
    if (isNext) {
      currentVideo = (currentVideo + 1) % shortsVideo.length;
    } else {
      currentVideo =
          (currentVideo - 1 + shortsVideo.length) % shortsVideo.length;
    }
    initialize();
  }

  /// apply
  @override
  void dispose() {
    videoPlayerController?.dispose(); // Dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (videoPlayerController != null &&
              videoPlayerController!.value.isInitialized)
            Center(
              child: GestureDetector(
                /// side up and down
                onVerticalDragEnd: (drag) {
                  if (drag.velocity.pixelsPerSecond.dy > 0) {
                    changeShort(false);
                  } else if (drag.velocity.pixelsPerSecond.dy < 0) {
                    changeShort(true);
                  }
                },
                onTap: () {
                  if (videoPlayerController!.value.isPlaying) {
                    videoPlayerController!.pause();
                  } else {
                    videoPlayerController!.play();
                  }
                },
                child: AspectRatio(
                  aspectRatio: videoPlayerController!.value.aspectRatio,
                  child: VideoPlayer(videoPlayerController!),
                ),
              ),
            )
          else
            const CircularProgressIndicator(
              color: Colors.black26,
            ),
          const Positioned(
              top: 40,
              right: 16,
              child: Icon(
                Icons.linked_camera_outlined,
                color: Colors.white,
                size: 30,
              )),

          /// user profile
          Positioned(
              bottom: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      /// here we call story card
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                                colors: [
                                  Colors.purple,
                                  Colors.red,
                                  Colors.orange,
                                  Colors.yellow,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),

                            /// here we show gradient color
                            border: Border.all(width: 3, color: Colors.red),
                            image: const DecorationImage(
                                image: AssetImage(
                                  "assets/images/romance.png",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Joooo",
                            style: myTextStyle15(
                                fontColor: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "age tum mil jao",
                            style: myTextStyle15(fontColor: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 60,
                  ),

                  /// Follow Button
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: Text(
                        "Follow",
                        style: myTextStyle15(
                            fontColor: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 2, color: Colors.white),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/romance.png"),
                            fit: BoxFit.cover)),
                  )
                ],
              )),

          Positioned(
              top: 400,
              right: 20,
              child: Column(
                children: [
                  /// like
                  Column(
                    children: [
                      const Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                      Text(
                        "14k",
                        style: myTextStyle18(
                            fontWeight: FontWeight.bold,
                            fontColor: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  /// comments
                  Column(
                    children: [
                      const Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      Text(
                        "100",
                        style: myTextStyle18(
                            fontWeight: FontWeight.bold,
                            fontColor: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  /// share
                  Column(
                    children: [
                      const Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      Text(
                        "202k",
                        style: myTextStyle18(
                            fontWeight: FontWeight.bold,
                            fontColor: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.more_vert_sharp,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ))
        ],
      ),
    );
  }
}

/// name of the song change
/// test on real device
/// add more video
/// pause and pause => DONE
/// you can also change all data using all constructor