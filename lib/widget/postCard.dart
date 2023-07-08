import 'package:flutter/material.dart';
import 'package:doaharian/model/posts.dart';
import 'package:doaharian/page/detailPage.dart';

class PostCard extends StatelessWidget {
  final Posts posts;

  const PostCard({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) {
              return DetailPage(posts: posts);
            }),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              posts.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(posts.body),
            const SizedBox(height: 8),
            if (posts.imageUrl != null)
              Image.network(
                posts.imageUrl!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              ),
          ],
        ),
      ),
    );
  }
}
