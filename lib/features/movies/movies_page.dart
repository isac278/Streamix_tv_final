
import 'package:flutter/material.dart';
import '../player/player_page.dart';

class MoviesPage extends StatelessWidget {
  final List<Map<String,String>> movies = [
    {'title':'Movie 1','genre':'Action','url':'https://example.com/movie1.mp4'},
    {'title':'Movie 2','genre':'Comedy','url':'https://example.com/movie2.mp4'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7, crossAxisSpacing: 8, mainAxisSpacing: 8),
      itemCount: movies.length,
      itemBuilder: (context,index){
        final movie = movies[index];
        return GestureDetector(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>PlayerPage(url: movie['url']!, isLive: false))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Container(color: Colors.grey, child: Center(child: Text('Poster')))),
              SizedBox(height: 4),
              Text(movie['title']!, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(movie['genre']!),
            ],
          ),
        );
      },
    );
  }
}
