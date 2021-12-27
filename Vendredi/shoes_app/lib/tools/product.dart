class Product {
  String name;
  double price;
  String mainImage;
  String secondImage;
  String thirdImage;
  int nColors;
  String description;

  Product({
    required this.name,
    required this.price,
    required this.mainImage,
    required this.secondImage,
    required this.thirdImage,
    required this.nColors,
    required this.description,
});
}

final List<Product> listProducts = [
  Product(name: 'Nike Charger',
      price: 388,
      mainImage: 'assets/images/articles/8a.png',
      secondImage: 'assets/images/articles/8b.png',
      thirdImage: 'assets/images/articles/8c.png',
      nColors: 3,
      description: 'Elle se distingue par son coussin d\'air visible sur les côtés de la semelle. C\'est une véritable icône du running et du streetwear.'
  ),
  Product(name: 'Nike Wilmax',
      price: 165,
      mainImage: 'assets/images/articles/7a.png',
      secondImage: 'assets/images/articles/7b.png',
      thirdImage: 'assets/images/articles/7c.png',
      nColors: 3,
      description: 'Elle se distingue par son coussin d\'air visible sur les côtés de la semelle. C\'est une véritable icône du running et du streetwear.'
  ),
  Product(name: 'Nike DodgeX',
      price: 388,
      mainImage: 'assets/images/articles/6a.png',
      secondImage: 'assets/images/articles/6b.png',
      thirdImage: 'assets/images/articles/6c.png',
      nColors: 3,
      description: 'Elle se distingue par son coussin d\'air visible sur les côtés de la semelle. C\'est une véritable icône du running et du streetwear.'
  ),
  Product(name: 'Nike Air Max 2090',
      price: 190,
      mainImage: 'assets/images/articles/1a.png',
      secondImage: 'assets/images/articles/1b.png',
      thirdImage: 'assets/images/articles/1a.png',
      nColors: 3,
      description: 'Elle se distingue par son coussin d\'air visible sur les côtés de la semelle. C\'est une véritable icône du running et du streetwear.'
  ),
  Product(name: 'Nike Air Soft 3307',
      price: 320,
      mainImage: 'assets/images/articles/2a.png',
      secondImage: 'assets/images/articles/2b.png',
      thirdImage: 'assets/images/articles/2a.png',
      nColors: 5,
      description: 'Elle se distingue par son coussin d\'air visible sur les côtés de la semelle. C\'est une véritable icône du running et du streetwear.'
  ),
  Product(name: 'Nike Max Collector',
      price: 499.9,
      mainImage: 'assets/images/articles/3a.png',
      secondImage: 'assets/images/articles/3b.png',
      thirdImage: 'assets/images/articles/3a.png',
      nColors: 2,
      description: 'Elle se distingue par son coussin d\'air visible sur les côtés de la semelle. C\'est une véritable icône du running et du streetwear.'
  ),
  Product(name: 'Nike Vapor',
      price: 175.9,
      mainImage: 'assets/images/articles/4a.png',
      secondImage: 'assets/images/articles/4b.png',
      thirdImage: 'assets/images/articles/4a.png',
      nColors: 3,
      description: 'Elle se distingue par son coussin d\'air visible sur les côtés de la semelle. C\'est une véritable icône du running et du streetwear.'
  ),
  Product(name: 'Nike Mysterious',
      price: 220,
      mainImage: 'assets/images/articles/5a.png',
      secondImage: 'assets/images/articles/5b.png',
      thirdImage: 'assets/images/articles/5a.png',
      nColors: 3,
      description: 'Elle se distingue par son coussin d\'air visible sur les côtés de la semelle. C\'est une véritable icône du running et du streetwear.'
  ),
];

