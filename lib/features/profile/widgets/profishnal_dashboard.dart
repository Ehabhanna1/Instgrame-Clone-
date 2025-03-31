import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instgram_clone/core/themes/styles.dart';

class ProfishnalDashboard extends StatelessWidget {
  const ProfishnalDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 80.h,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Professional dashboard",
                            style: myTextStyle15(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "70k views in the last 30 days.",
                            style: myTextStyle15(),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
  }
}