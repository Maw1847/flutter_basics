import 'package:flutter/material.dart';
import 'package:shoes_app/tools/product.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.article}) : super(key: key);
  final Product article;

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
                height: sizeY * 0.45,
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
                padding: const EdgeInsets.only(top: 20.0, left: 20.0 ),
                child: Column(
                  children: [
                    Container(
                      height: sizeY * 0.3,
                      width: sizeX * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)
                          ),
                          image: DecorationImage(
                            image: AssetImage(article.mainImage,),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                    Container(
                      height: sizeY * 0.1,
                      width: sizeX * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)
                        ),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(width: 120.0,),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 2.0,
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          topRight: Radius.circular(30.0)
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.lock_clock)
                                ],
                              ),
                            ),
                            SizedBox(width: 90.0,),
                            Text('5/7',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.only(top: 160.0, left: 40.0 ),
                child: Container(
                  height: sizeY * 0.1,
                  width: sizeX * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)
                      ),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 5.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0)
                                ),
                              ),
                            ),
                            Icon(Icons.lock_clock)
                          ],
                        ),
                        Text('5/7'),
                      ],
                    ),
                  ),
                ),
              ),*/
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${article.price}',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: Icon(Icons.favorite_outline)
                    ),
                    SizedBox(width: 5.0,),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),
                        child: Icon(Icons.share_outlined)
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 5.0),
            child: Text(article.name,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: sizeY * 0.1,
                width: sizeX * 0.2,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    image: DecorationImage(image: AssetImage(article.mainImage), fit: BoxFit.fill)
                ),
              ),
              Container(
                height: sizeY * 0.1,
                width: sizeX * 0.2,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    image: DecorationImage(image: AssetImage(article.secondImage), fit: BoxFit.fill)
                ),
              ),
              Container(
                height: sizeY * 0.1,
                width: sizeX * 0.2,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    image: DecorationImage(image: AssetImage(article.thirdImage), fit: BoxFit.fill)
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 5.0),
            child: Text('Choisissez une pointure',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: sizeY * 0.07,
                      width: sizeY * 0.07,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(7.0))
                      ),
                      child: Center(child: Text('6')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: sizeY * 0.07,
                      width: sizeY * 0.07,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                        ),
                          borderRadius: BorderRadius.all(Radius.circular(7.0))
                      ),
                      child: Center(child: Text('8.5')),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: sizeY * 0.07,
                      width: sizeY * 0.07,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(7.0))
                      ),
                      child: Center(child: Text('6.5')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: sizeY * 0.07,
                      width: sizeY * 0.07,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(7.0))
                      ),
                      child: Center(child: Text('9')),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: sizeY * 0.07,
                      width: sizeY * 0.07,
                      decoration: BoxDecoration(
                        color: Colors.black,
                          border: Border(
                            top: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(7.0))
                      ),
                      child: Center(child: Text('7',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: sizeY * 0.07,
                      width: sizeY * 0.07,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(7.0))
                      ),
                      child: Center(child: Text('9.5')),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: sizeY * 0.07,
                      width: sizeY * 0.07,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(7.0))
                      ),
                      child: Center(child: Text('7.5')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: sizeY * 0.07,
                      width: sizeY * 0.07,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(7.0))
                      ),
                      child: Center(child: Text('10')),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: sizeY * 0.07,
                      width: sizeY * 0.07,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(7.0))
                      ),
                      child: Center(child: Text('8')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: sizeY * 0.07,
                      width: sizeY * 0.07,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(7.0))
                      ),
                      child: Center(child: Text('10.5')),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 5.0),
            child: Text('Description',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 5.0),
            child: Text(article.description,
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: null,
                child: const Text('Add to cart',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: null,
                child: const Text('Buy now',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
