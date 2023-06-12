import 'package:flutter/material.dart';
class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(

            children: <Widget>[
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/picture1.jpg'),
                      fit:BoxFit.cover
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),

                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/picture2.jpg'),
                      fit:BoxFit.cover
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),

                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/picture3.jpg'),
                      fit:BoxFit.cover
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),

                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/picture4.jpg'),
                      fit:BoxFit.cover
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),

                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/picture5.jpg'),
                      fit:BoxFit.cover
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}