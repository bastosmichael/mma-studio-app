import 'package:flutter/material.dart';
import 'package:mastersMartialArts/models/technique.dart';
import 'package:mastersMartialArts/screens/youtube_video_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TechniquesCatalog extends StatelessWidget {
  TechniquesCatalog({Key? key}) : super(key: key);

  final List<Technique> techniques = [
    Technique(
      id: '1',
      title: 'Jab',
      description: 'A quick, straight punch thrown with the lead hand.',
      thumbnailUrl: 'https://example.com/jab_thumbnail.jpg',
      videoId: 'jab_video_id',
    ),
    Technique(
      id: '2',
      title: 'Cross',
      description: 'A straight punch thrown with the rear hand.',
      thumbnailUrl: 'https://example.com/cross_thumbnail.jpg',
      videoId: 'cross_video_id',
    ),
    Technique(
      id: '3',
      title: 'Hook',
      description: 'A semicircular punch thrown with the lead hand to the side of the opponent\'s head.',
      thumbnailUrl: 'https://example.com/hook_thumbnail.jpg',
      videoId: 'hook_video_id',
    ),
    Technique(
      id: '4',
      title: 'Uppercut',
      description: 'A vertical, rising punch thrown with the rear hand.',
      thumbnailUrl: 'https://example.com/uppercut_thumbnail.jpg',
      videoId: 'uppercut_video_id',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MMA Techniques')),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        itemCount: techniques.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => YouTubeVideoScreen(
                    videoId: techniques[index].videoId,
                    title: techniques[index].title,
                    description: techniques[index].description,
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      imageUrl: techniques[index].thumbnailUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      techniques[index].title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
