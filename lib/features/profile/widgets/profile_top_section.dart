
import 'package:flutter/material.dart';
import 'package:instgram_clone/core/themes/styles.dart';
import 'package:instgram_clone/features/profile/widgets/add_user_profil_image.dart';

class ProfileTopSection extends StatelessWidget {
  const ProfileTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                 const AddUserProfilImage(),
                 Column(
                      children: [
                        Text(
                          "198",
                          style: myTextStyle22(fontWeight: FontWeight.bold),
                        ),
                        Text("posts", style: myTextStyle15()),
                      ],
                    ),
                     Column(
                              children: [
                                Text(
                                  "20k",
                                  style: myTextStyle22(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "followers",
                                  style: myTextStyle15(),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "112",
                                  style: myTextStyle22(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "following",
                                  style: myTextStyle15(),
                                )
                              ],
                            ),
                        
                
                
                
                  ],
                 
                
                ),
            
                
              );
  }
}