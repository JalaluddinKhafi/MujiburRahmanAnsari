import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:profile/constants.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CategoriesScroller categoriesScroller = CategoriesScroller();
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = FOOD_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
          ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post["name"],
                      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/${post["image"]}",
                  height: double.infinity,
                )
              ],
            ),
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {

      double value = controller.offset/119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height*0.30;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('شهید مولانا مجیب الرحمن انصاری (رح)',),
          actions: [
            Icon(CupertinoIcons.chat_bubble_text),
            SizedBox(
              width: 4,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
              child: Icon(CupertinoIcons.ellipsis_vertical),
            ),
          ],
        ),
        body: Container(
          height: size.height,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: closeTopContainer?0:1,
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: size.width,
                    alignment: Alignment.topCenter,
                    height: closeTopContainer?0:categoryHeight,
                    child: categoriesScroller),
              ),
              Expanded(
                  child: ListView.builder(
                      controller: controller,
                      itemCount: itemsData.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        double scale = 1.0;
                        if (topContainer > 0.5) {
                          scale = index + 0.5 - topContainer;
                          if (scale < 0) {
                            scale = 0;
                          } else if (scale > 1) {
                            scale = 1;
                          }
                        }
                        return Opacity(
                          opacity: scale,
                          child: Transform(
                            transform:  Matrix4.identity()..scale(scale,scale),
                            alignment: Alignment.bottomCenter,
                            child: Align(
                                heightFactor: 0.7,
                                alignment: Alignment.topCenter,
                                child: itemsData[index]),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

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