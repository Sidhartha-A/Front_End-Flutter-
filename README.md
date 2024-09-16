# grocery_store

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Container(
child: Center(
child: Column(children: [
const SizedBox(
height: 125,
),
Image.asset('images/first_page/food_bowl.png', height: 320, width: 320,),
const Text("\nFast delivery at \n your doorstep", style: TextStyle(fontFamily: "chopin", fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white,),),
const Text("\n Home delivery just one click away", style: TextStyle(fontFamily: "hero", fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xFFffffff),),)
]),
),
),