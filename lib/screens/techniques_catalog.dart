import 'package:flutter/material.dart';
import 'package:mastersMartialArts/models/technique.dart';
import 'package:mastersMartialArts/screens/youtube_video_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TechniquesCatalog extends StatelessWidget {
  TechniquesCatalog({Key? key}) : super(key: key);

  final List<Technique> techniques = [
    Technique(
      id: '1',
      title: 'Boxing Alphabet',
      description: 'A set of punches for beginners.',
      videoId: 'UR9-AP2yzY0',
    ),
    Technique(
      id: '2',
      title: 'Stance Flow',
      description: 'A set of stances for beginners.',
      videoId: 'rwkEoi0f3V0',
    ),
    Technique(
      id: '3',
      title: 'Blue',
      description: 'Different kicks that are needed for all yellow belts.',
      videoId: 'WVVcjqLsrSM',
    ),
    Technique(
      id: '4',
      title: 'Shield Set',
      description: 'A series of different moves to defend against attacks.',
      videoId: 'mmrOzmUrJwI',
    ),
    Technique(
      id: '5',
      title: 'Elbow Plus Count',
      description: 'A set of moves specifically designed for using your elbows.',
      videoId: 'c-K0MXU2RmI',
    ),
    Technique(
      id: '6',
      title: 'Takedown FLow',
      description: 'A flow for specificly control positions and takedowns',
      videoId: 'jwHeXMRoT6Y',
    ),
    Technique(
      id: '7',
      title: 'Ground Control Flow',
      description: 'A flow of moves involving submissisons',
      videoId: 'Sl2AXlAwXE',
    )
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
          mainAxisSpacing: 10,
        ),
        itemCount: techniques.length,
        itemBuilder: (context, index) {
          final technique = techniques[index];
          final thumbnailUrl = 'http://i3.ytimg.com/vi/${technique.videoId}/hqdefault.jpg';

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => YouTubeVideoScreen(
                    videoId: technique.videoId,
                    title: technique.title,
                    description: technique.description,
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      imageUrl: thumbnailUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      technique.title,
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
