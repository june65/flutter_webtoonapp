import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Episode extends StatelessWidget {
  const Episode({
    Key? key,
    required this.episodes,
    required this.webtoon_id,
  }) : super(key: key);

  final String webtoon_id;
  final WebtoonEpisodeModel episodes;
  onButtonTap() async {
    await launchUrlString(
        "https://comic.naver.com/webtoon/detail?titleId=$webtoon_id&no${episodes.id}");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Row(
        children: [
          Text(
            episodes.title,
            style: const TextStyle(fontSize: 10),
          ),
          const Icon(
            Icons.chevron_right_rounded,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
