import 'package:flutter/material.dart';
import 'package:diabecheck2/app_colors.dart';

class Template extends StatelessWidget {
  final String imagePath;
  final String description;
  const Template({
    super.key,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.9,
        //color: AppColors.lightBlue,
        child: Column(
          children: [
            SizedBox(height: 35),
            Image.asset(
              imagePath,
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.9,
              fit: BoxFit.contain,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 130,
              padding: EdgeInsets.only(top: 30, right: 20, left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.lightBlue, AppColors.lightBlueG],
                ),
              ),

              child: Text(
                description,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
