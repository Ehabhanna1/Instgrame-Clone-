import 'package:flutter/material.dart';
import 'package:instgram_clone/features/reels/widgets/reels_card.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       
      body: SafeArea(child: ReelsCard()),
    );
  }
}