import 'package:actors_profile_app_ui/animations/fade_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/emma.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [Colors.black, Colors.black.withOpacity(0.3)],
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FadeAnimation(
                              delay: 1,
                              child: Text(
                                "Emma Watson",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                FadeAnimation(
                                  delay: 1.2,
                                  child: Text(
                                    "60 Videos",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16.0),
                                  ),
                                ),
                                SizedBox(
                                  width: 50.0,
                                ),
                                FadeAnimation(
                                  delay: 1.3,
                                  child: Text(
                                    "240K Subscribers",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16.0),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FadeAnimation(
                            delay: 1.6,
                            child: Text(
                              "Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.",
                              style: TextStyle(color: Colors.grey, height: 1.4),
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          const FadeAnimation(
                            delay: 1.6,
                            child: Text(
                              "Born",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const FadeAnimation(
                            delay: 1.6,
                            child: Text(
                              "April, 15th 1990, Paris",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const FadeAnimation(
                            delay: 1.6,
                            child: Text(
                              "Nationality",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const FadeAnimation(
                            delay: 1.6,
                            child: Text(
                              "British",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const FadeAnimation(
                            delay: 1.6,
                            child: Text(
                              "Videos",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          FadeAnimation(
                            delay: 1.8,
                            child: SizedBox(
                              height: 200.0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  makeVideo("assets/images/emma-1.jpg"),
                                  makeVideo("assets/images/emma-2.jpg"),
                                  makeVideo("assets/images/emma-3.jpg")
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 120.0,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 50.0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FadeAnimation(
                delay: 2,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.yellow[700]),
                  child: const Align(
                    child: Text(
                      "Follow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeVideo(String image) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.3)
              ],
            ),
          ),
          child: const Align(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 70,
            ),
          ),
        ),
      ),
    );
  }
}
