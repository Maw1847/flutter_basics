import 'package:flutter/material.dart';
import 'package:shoes_app/tools/constants.dart';
import 'package:shoes_app/tools/product.dart';
import 'package:shoes_app/view/main/details_page.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.width; // largeur de l'écran
    double sizeY = MediaQuery.of(context).size.height; // hauteur de l'écran

    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.zero,
                height: sizeY * 0.38,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.zero,
                height: sizeY * 0.3,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 15.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'SHOPIN',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: sizeY * 0.05,
                          width: sizeX * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey,
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Rechercher',
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          height: sizeY * 0.05,
                          width: sizeX * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey,
                          ),
                          child: Icon(Icons.enhance_photo_translate_outlined),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110.0, left: 40.0 ),
                child: Container(
                  height: sizeY * 0.2,
                  width: sizeX * 0.8,
                  decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/slides/101.jpg',),
                        fit: BoxFit.fill,
                      )
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Marques',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              children: List.generate(brands.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: null,
                    child: Container(
                      height: sizeY * 0.13,
                      width: sizeY * 0.15,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: sizeY * 0.08,
                                  width: sizeY * 0.08,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(brands[index]['imgdir']!),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: sizeY * 0.08,
                                  width: sizeY * 0.08,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                            color: Colors.blue.withOpacity(0.2)),
                                        bottom: BorderSide(
                                            color: Colors.blue.withOpacity(0.2)),
                                        right: BorderSide(
                                            color: Colors.blue.withOpacity(0.2)),
                                        left: BorderSide(
                                            color: Colors.blue.withOpacity(0.2)),
                                      ),
                                      borderRadius: BorderRadius.circular(12.0)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5.0,),
                          Text(
                            brands[index]['titre']!,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nouveautés',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 155.0,),
                      ElevatedButton(onPressed: null,
                        child: const Text('Voir tout'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: List.generate(listProducts.length, (index) {
                return ProductItem(article: listProducts[index],);
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.article}) : super(key: key);
  final Product article;

  @override
  Widget build(BuildContext context) {

    double sizeX = MediaQuery.of(context).size.width; // largeur de l'écran
    double sizeY = MediaQuery.of(context).size.height; // hauteur de l'écran
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => DetailsPage(article: article)));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              height: sizeY * 0.28,
              width: sizeX * 0.35,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),

              ),

            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: sizeY * 0.15,
                width: sizeX * 0.33,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    image: DecorationImage(image: AssetImage(article.mainImage), fit: BoxFit.fill)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 90.0),
              child: Icon(Icons.favorite_outline),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110.0, left: 5.0),
              child: Text(article.name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130.0, left: 10.0),
              child: Container(
                height: 22.0,
                width: 73.0,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Center(child: Text('${article.nColors} Couleurs')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160.0, left: 10.0),
              child: Row(
                children: [
                  Text('\$${article.price}',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 24.0,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border(
                        top: BorderSide(color: Colors.black),
                        bottom: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                      ),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.add),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

