import 'package:flutter/material.dart';

class Avenue extends StatelessWidget {
  const Avenue({
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('lib/assests/mm.png'),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Stories This Week",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: SingleChildScrollView(
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                    left: 20,
                    right: 20,
                  ),
                  clipBehavior: Clip.antiAlias,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Stack(
                      alignment: Alignment.center,
                      fit: StackFit.expand,
                      children: [
                        const AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image(
                            image: AssetImage('lib/assests/download.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  const Color(0xFF222222).withOpacity(0.0),
                                  const Color(0xFF222222).withOpacity(0.5),
                                  const Color(0xFF222222).withOpacity(1.0),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.4, 0.7, 1.0],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 2,
                            vertical: 2,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                "  Article title",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 2.5,
                                    child: Row(
                                      children: [
                                        ListView.separated(
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemBuilder: (context, index) {
                                              return const Text(
                                                "Author name",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 200, 200, 200),
                                                ),
                                              );
                                            },
                                            separatorBuilder: (context, index) {
                                              return const Text(
                                                ', ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 200, 200, 200),
                                                ),
                                              );
                                            },
                                            itemCount: 3),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.watch_later_outlined,
                                          color: Color(0xFFC4C4C4),
                                          size: 12,
                                        ),
                                        Text(
                                          ' ${const Duration(seconds: 120).inMinutes} min  ',
                                          style: const TextStyle(
                                            color: Color(0xFFC4C4C4),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
