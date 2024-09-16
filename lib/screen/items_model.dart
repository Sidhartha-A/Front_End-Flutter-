class FoodDetail {
  String id;
  String image;
  String name;
  double price;
  double rate;
  String kcal;
  String cookingTime;
  String description;

  FoodDetail({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.kcal,
    required this.cookingTime,
    required this.description,
  });
}

List<FoodDetail> foodsItems = [
  FoodDetail(
    id: '1',
    image:
        'images/Avacado_salad.jpg',
    name: 'Avacado Salad',
    price: 12,
    rate: 4.5,
    kcal: '100',
    cookingTime: '20min',
    description:
        "This avocado salad is a delicious combination of ripe avocados, sweet onions, fresh tomatoes, and cilantro. This recipe is so easy to make and very colorful — I think you'll like it! This avocado salad recipe is full of bold, fresh flavor and color.",
  ),
  FoodDetail(
      id: '2',
      image:
          'images/images.jpeg',
      name: 'Veggie Delight Sub',
      price: 20,
      rate: 5.0,
      kcal: '100',
      cookingTime: '30min',
      description:
          "A Royal burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor. Burgers are considered an American food but are popular around the world."),

  FoodDetail(
    id: '3',
    image:
        'images/walnut-kernel-halves-in-a-wooden-bowl-free-png.jpeg',
    name: 'Walnuts',
    price: 12,
    rate: 4.6,
    kcal: '20',
    cookingTime: '15min',
    description:
        "Fruit salad is a dish consisting of various kinds of fruit, sometimes served in a liquid, either their juices or a syrup. In different forms, fruit salad can be served as an appetizer or a side as a salad. A fruit salad is sometimes known as a fruit cocktail, or fruit cup.",
  ),
  FoodDetail(
    id: '4',
    image:
        'images/12589808-1614823857888908.jpg',
    name: 'Mix Nut',
    price: 30,
    rate: 5.0,
    kcal: '160',
    cookingTime: 'Ready',
    description:
        "protein bar is a chocolate consisting of any mixture of manually combined nuts. Common constituents are peanuts, almonds, walnuts, Brazil nuts, cashews, hazelnuts, and pecans. Mixed nuts may be salted, roasted, cooked, or blanched.",
  ),
  FoodDetail(
    id: '5',
    image:
        "images/Greek-yogurt-smoothie-peanut-butter.jpg",
    name: 'Yogurt smoothie',
    price: 50,
    rate: 4.8,
    kcal: '100',
    cookingTime: '05min',
    description:
        "This strawberry yogurt smoothie is creamy, easy to whip up and tastes like a milkshake, but is made healthy",
  ),
  FoodDetail(
    id: '6',
    image: "images/multigrain-bread-loaf-2.jpg",
    name: 'Multigrain bread',
    price: 05,
    rate: 5.0,
    kcal: '10',
    cookingTime: 'Ready',
    description:
        "Shop Multi-grain Bread, 350g. Follow a healthy, nutritious diet with special offers, deals, discounts & fast delivery ...",
  ),

  FoodDetail(
      id: '7',
      image:
      'images/saladsq.jpg',
      name: 'Tropical Friut Salad',
      price: 20,
      rate: 5.0,
      kcal: '100',
      cookingTime: '30min',
      description:
      "A Royal burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor. Burgers are considered an American food but are popular around the world."
  ),
  FoodDetail(
      id: '8',
      image:
      'images/easy-beef-and-quinoa-salad-bowl-130828-2.jpg',
      name: 'Quinoa Salad',
      price: 20,
      rate: 5.0,
      kcal: '100',
      cookingTime: '30min',
      description:
      "A Royal burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor. Burgers are considered an American food but are popular around the world."
  ),
  FoodDetail(
      id: '9',
      image:
      'images/fraiche-living-tropical-green-smoothie.jpg',
      name: 'Tropical green smoothie',
      price: 20,
      rate: 5.0,
      kcal: '100',
      cookingTime: '30min',
      description:
      "A Royal burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor. Burgers are considered an American food but are popular around the world."),

  FoodDetail(
      id: '10',
      image:
      'images/premium_photo-1667543228378-ec4478ab2845.jpeg',
      name: 'Tropical green smoothie',
      price: 20,
      rate: 5.0,
      kcal: '100',
      cookingTime: '30min',
      description:
      "A Royal burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor. Burgers are considered an American food but are popular around the world."),
];
