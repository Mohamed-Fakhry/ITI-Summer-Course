import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ITI App",
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.red,
      ),
      // home: MoviesScreen(),
      routes: {
        "/": (_) => MoviesScreen(),
        "/movie-details": (_) => MovieDetails(),
      },
    );
  }
}

class MoviesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      appBar: AppBar(
        title: Text("Movies Screen"),
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => MovieDetails("Star wars IV"),
                //   ),
                // );
                Navigator.pushNamed(
                  context,
                  "/movie-details",
                  arguments: "Star wars IV",
                );
              },
              child: Container(
                height: 120,
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network(
                          "https://m.media-amazon.com/images/I/A1wnJQFI82L._AC_SY879_.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Star wars IV",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  "5 Starts",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "2.6k reviews",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 14,
                                  color: Colors.grey[350],
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "2h 14m",
                                  style: TextStyle(
                                    color: Colors.grey[350],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 14,
                                  color: Colors.grey[350],
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "2019/12/31",
                                  style: TextStyle(
                                    color: Colors.grey[350],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => MovieDetails("Star wars IV"),
                //   ),
                // );
              },
              child: Container(
                height: 120,
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network(
                          "https://m.media-amazon.com/images/I/A1wnJQFI82L._AC_SY879_.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Star wars IV",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  "5 Starts",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "2.6k reviews",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 14,
                                  color: Colors.grey[350],
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "2h 14m",
                                  style: TextStyle(
                                    color: Colors.grey[350],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 14,
                                  color: Colors.grey[350],
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "2019/12/31",
                                  style: TextStyle(
                                    color: Colors.grey[350],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDetails extends StatelessWidget {
  String? movieName;

  MovieDetails({this.movieName});

  @override
  Widget build(BuildContext context) {
    movieName = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: Text(movieName ?? ""),
      ),
      body: Container(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text("Back to Home screen"),
        ),
      ),
    );
  }
}
