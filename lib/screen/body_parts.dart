import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/screen/details_page.dart';
import 'items_model.dart';

class foodTiles extends StatefulWidget{
  const foodTiles({super.key});
  @override
  State<foodTiles> createState() => _foodTilesState();
}

class _foodTilesState extends State<foodTiles>{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: foodsItems.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 265,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,),
         itemBuilder: (context, index){
           FoodDetail food = foodsItems[index];
             return GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
               },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Stack(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 12,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(125),
                                child: Image.asset(food.image, height: 120, width: 120, fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 13),
                            child: Text(food.name,
                            maxLines: 1,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 18, fontFamily: 'averta', fontWeight: FontWeight.w500, color: Color(0xff005200)),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: Row(
                            children: [
                              Text(food.cookingTime,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 13, fontFamily: 'averta', fontWeight: FontWeight.w400, color: Colors.black54
                              )
                              ),
                              const Spacer(),
                              const Icon(Icons.star, color: Color(0xff56AB91), size: 18,),
                              SizedBox(width: 2,),
                              Text(food.rate.toString(), style: const TextStyle(fontFamily: "chopin", fontWeight: FontWeight.w600, color: Colors.black54),),
                            ],
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                            child: Text('\$${food.price}0', style: const TextStyle(fontFamily: "chopin", fontWeight: FontWeight.w600, color: Color(0xff005200), fontSize: 16),),
                          ),
                        ],
                      ),
                    const SizedBox(height: 12),
                      const Padding(
                        padding: EdgeInsets.only(left: 145, top: 8),
                        child: Icon(Icons.favorite_border_rounded, size: 22, color: Color(0xff56AB91),
                        ),
                      ),
                      const Align(
                          alignment: Alignment.bottomRight,
                          child: Material(
                            color: Color(0xFF4F772D),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                            child: InkWell(
                              child: Padding(padding: EdgeInsets.all(8),
                              child: Icon(Icons.add, color: Colors.white,),),

                            ),
                          )
                        ),
                    ],
                  )
                ),
              ),
            );
         }
    );
  }
}
//

