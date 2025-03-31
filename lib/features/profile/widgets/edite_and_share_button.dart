

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instgram_clone/core/themes/styles.dart';

class EditeAndShareButton extends StatelessWidget {
  const EditeAndShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Colors.white38,
                              ),
                              child: Text(
                                "Edit profile",
                                style:
                                    myTextStyle15(fontWeight: FontWeight.bold),
                              ))),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Colors.white38,
                              ),
                              child: Text(
                                "Share profile",
                                style:
                                    myTextStyle15(fontWeight: FontWeight.bold),
                              ))),
                    ],
                  ),
                );
  }
}