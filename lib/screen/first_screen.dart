import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grocery_store/screen/home_page.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/first_page/back_ground.jpg"), // Path to your background image
                fit: BoxFit.cover, // BoxFit.cover scales the image to cover the entire area
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3), // Adjust sigmaX and sigmaY for blur intensity
            child: Container(
              color: Colors.black.withOpacity(0), // Transparent color to apply the blur effect
            ),
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 125,),
                Image.asset('images/first_page/food_bowl.png', height: 320, width: 320,),
                const Text("Fast delivery at \n your doorstep", style: TextStyle(fontFamily: "chopin", fontWeight: FontWeight.w700, fontSize: 40, color: Color(0xFF003D00),),),
                const SizedBox(height: 10,),
                const Text(" Home delivery just one click away", style: TextStyle(fontFamily: "montblanc", fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF000000),),),
                const SizedBox(height: 185,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                }, style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 115, vertical: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ), child: const Text("Let's Explore", style: TextStyle(fontFamily: "averta", fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF344E41)),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

