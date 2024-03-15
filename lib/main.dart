import 'package:anime_ui/utils/anime_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: HomePage(),
    );
  }
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
      backgroundColor: Color.fromARGB(255, 36, 36, 38),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Kon'nichiwa 👋",
          style: GoogleFonts.poppins(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5, top: 3, bottom: 3),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('lib/images/oreki.jpg')),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 240,
            height: 320,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        String imagePath =
                            'lib/images/img' + (index + 1).toString() + '.jpg';

                        return AnimeTile(imagePath: imagePath);
                      }),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  '   Up on your watchlist',
                  style: GoogleFonts.poppins(
                      color: Colors.grey.shade700, fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Attack on Titan: Chronicle',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '2020',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '4.4',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Latest Reviews',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(100, 78, 78, 78),
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(10),
              width: double.maxFinite,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'lib/images/cybercitycover.jpg',
                      height: 100,
                      width: 70,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cyber City Oedo 808',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.green,
                            size: 20,
                          ),
                          Text(
                            '4.4',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Colors.green),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Image.asset(
                              'lib/images/oreki.jpg',
                              height: 25,
                              width: 25,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'by Stephaine Myers',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
