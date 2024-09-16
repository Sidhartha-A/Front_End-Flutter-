import 'package:flutter/material.dart';


class HeaderParts extends StatefulWidget{
  const HeaderParts({super.key});

  @override
  State<HeaderParts> createState() => _HeaderPartsState();
}
int indexCategory = 0;
class _HeaderPartsState extends State<HeaderParts>{
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      topheader(),
        title(),
        searchbar(),
        const SizedBox(height: 25,),
        categories()

    ],

    );
  }

  Padding categories() {
    List list = ["Hot now", "Grocery", "Fruits", "Vegetables", "Food"];
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 10,
      ),
      child: SizedBox(
          height: 30,
          child: ListView.builder(
            itemCount: list.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
              return GestureDetector(
                  onTap: () {
                setState(() {
                  indexCategory = index;
                });
              },
                child: Container(
                 alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(
                              left: 20,
                              right: 15,
                               ),
                      child: Text(
                        list[index],
                          style: TextStyle(
                                fontSize: indexCategory == index? 22:20,
                                color: indexCategory == index? const Color(0xff005200): const Color(0xffadb5bd),
                                fontWeight: indexCategory == index ? FontWeight.bold : null,
                            ),
                           ),
                          ),
                        ),
                   );
              }),
        ),
    );
  }

  Container searchbar() {
    return Container(
        height: 45,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.only(right: 1),
        decoration: BoxDecoration(color: const Color(0xffDBE6DD), borderRadius: BorderRadius.circular(40)),
        child: Row(
          children: [
            const Expanded(child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Color(0xff005200),),
                    border: InputBorder.none,
                  hintText: "Search food",
                hintStyle: TextStyle(color: Colors.black26)),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: Material(
                  color: const Color(0xff8d99ae),
                  borderRadius: BorderRadius.circular(25),
                  child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(25),
                              child: Container(height: 30,width: 30,alignment: Alignment.center,
                                child: const Icon(Icons.sort,color: Colors.white,)
                      ),
                  ),
                ),
            ),
          ],
      ),
      );
  }

  Padding title() {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, User!", style: TextStyle(fontFamily: "montblanc", fontWeight: FontWeight.w600, color: Color(0xFF4F772D), fontSize: 18),),
            Text("Find your food 😀", style: TextStyle(fontFamily: "chopin", fontWeight: FontWeight.w600, color: Color(0xFF1E3322), fontSize: 29),),
            SizedBox(height: 20,),
          ],
        ),
      );
  }

  Padding topheader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
      child: Row( children: [
        Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          child: InkWell(
            onTap:
                (){},
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 45,
              width: 45,
              alignment: Alignment.center,
              child: const Icon(Icons.menu_rounded, color: Color(0xFF1B4332), size: 30,),
            ),
          ),
        ),
        const Spacer(),
        const Icon(Icons.location_pin, size: 28, color: Color(0xFF1B4332),),
        const Text("Street, Area, City", style: TextStyle(fontFamily: "playwrite", fontWeight: FontWeight.w600, color: Color(0xFF90A955), fontSize: 14),),
        const Spacer(),
        ClipOval(
          child: Image.asset("images/header_part/profile.png", height: 35, width: 35,),
        )
      ],
      ),
    );
  }
}