import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'items_model.dart';
import 'package:flutter/painting.dart';

class DetailsPage extends StatefulWidget{
  const DetailsPage ({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}
class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/first_page/back_ground.jpg"),
                // Path to your background image
                fit: BoxFit
                    .cover, // BoxFit.cover scales the image to cover the entire area
              ),
            ),
          ),
          // ListView with content
          ListView(
            children:  [
              const SizedBox(height: 8,),
              DetailsHeader(),
               SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                        bottom: 0,
                      child: Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          )
                        ),
                      ),

                    )
                  ],
                )
              )
              // Add more ListTile or other widgets here
            ],
          ),
        ],
      ),
    );
  }

  Padding DetailsHeader() {
    return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              borderRadius: const BorderRadius.all(Radius.circular(18)),
                            ),
                            child: const BackButton(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 1.5,
                          sigmaY: 1.5,
                        ),
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Icon(
                            Icons.favorite_border_rounded, color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            );
  }
}

//body: Container(
//           decoration: const BoxDecoration(
//             image: DecorationImage(image: AssetImage("images/first_page/back_ground.jpg"), // Path to your background image
//               fit: BoxFit.cover, // BoxFit.cover scales the image to cover the entire area
//             ),
//       )