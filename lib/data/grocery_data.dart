class GroceryData {
  static final List<Map<String, dynamic>> groceryProducts = [
    {
      "id": 1,
      "name": "Red Apple",
      "category": "Fruits",
      "price": 2.49, // price per unit or per kg depending on your app
      "unit": "kg",
      "quantity": 1.0, // default selected quantity
      "inStock": true,
      "rating": 4.6,
      "image":
          "https://img.freepik.com/premium-photo/red-apple-with-water-drops-isolated_55883-7965.jpg?semt=ais_hybrid&w=740&q=80",
      "description": "Fresh, crisp red apples — great for snacking.",
    },
    {
      "id": 2,
      "name": "Banana",
      "category": "Fruits",
      "price": 1.29,
      "unit": "kg",
      "quantity": 1.0,
      "inStock": true,
      "rating": 4.4,
      "image":
          "https://pancan.org/wp-content/uploads/2021/04/FridayFix_Bananas_Blog.jpg",
      "description": "Sweet ripe bananas, high in potassium.",
    },
    {
      "id": 3,
      "name": "Whole Wheat Bread",
      "category": "Bakery",
      "price": 2.99,
      "unit": "loaf",
      "quantity": 1,
      "inStock": true,
      "rating": 4.2,
      "image":
          "https://media.istockphoto.com/id/474679296/photo/organic-homemade-whole-wheat-bread.jpg?s=612x612&w=0&k=20&c=b3TU_bz4r6gxeo2COsY2N4t9PxMoVmWdFO0kfnOJg4I=",
      "description": "Freshly baked whole wheat bread, 400g.",
    },
    {
      "id": 4,
      "name": "Organic Milk",
      "category": "Dairy",
      "price": 3.50,
      "unit": "liter",
      "quantity": 1,
      "inStock": true,
      "rating": 4.7,
      "image":
          "https://www.health.com/thmb/G92Sp4jbV89vreXlXXVg0oGLayk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Health-GettyImages-IsOrganicMilkBetterForYou-7e90f834800447ddb43ddbd499260095.jpg",
      "description": "Organic full cream milk, 1L carton.",
    },
    {
      "id": 5,
      "name": "Brown Rice",
      "category": "Grains",
      "price": 4.20,
      "unit": "kg",
      "quantity": 1.0,
      "inStock": true,
      "rating": 4.5,
      "image":
          "https://media.istockphoto.com/id/884521540/photo/pile-of-brown-rice-with-a-wooden-spoon.jpg?s=612x612&w=0&k=20&c=g149qSTcoULiJrsLG3E0qLntBR4bjQbVYbVxGWoAZoI=",
      "description": "Long-grain brown rice, nutritious and filling.",
    },
    {
      "id": 6,
      "name": "Olive Oil",
      "category": "Cooking",
      "price": 8.99,
      "unit": "bottle",
      "quantity": 1,
      "inStock": true,
      "rating": 4.8,
      "image":
          "https://media.istockphoto.com/id/1206682746/photo/pouring-extra-virgin-olive-oil-in-a-glass-bowl.jpg?s=612x612&w=0&k=20&c=0b9ppVJN0BNyzpLodnhPV8MzNTGY7-9-kteOUIBPxq8=",
      "description": "Extra virgin olive oil, 500ml.",
    },
  ];
}
