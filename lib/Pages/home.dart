import 'package:briefly/Models/category_model.dart';
import 'package:briefly/Services/data.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];

  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: Container(
        margin: const EdgeInsets.only(top: 40, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Brief",
                  style: TextStyle(
                      color: const Color(0xff3280ef),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "ly",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 25),
            const Text(
              "Hottest News",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 3, left: 5),
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/images/news1.jpg",
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Text(
                                "Hottest News",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: const Color.fromARGB(188, 0, 0, 0),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: const Color.fromARGB(151, 0, 0, 0),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xff3280ef),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(10)),
                              ),
                              margin: const EdgeInsets.only(left: 160),
                              child: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 3, left: 5),
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/images/news1.jpg",
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Text(
                                "Hottest News",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: const Color.fromARGB(188, 0, 0, 0),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: const Color.fromARGB(151, 0, 0, 0),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xff3280ef),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(10)),
                              ),
                              margin: const EdgeInsets.only(left: 160),
                              child: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Explore",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryTile(
                      Categoryname: categories[index].CategoryName,
                      image: categories[index].image,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final image, Categoryname;
  CategoryTile({this.Categoryname, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                image,
                height: 130,
                width: 130,
                fit: BoxFit.cover,
              )),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
            ),
            child: Center(
              child: Text(
                Categoryname,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
