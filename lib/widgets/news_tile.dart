import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/views/web_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});
  final ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          if (articalModel.url != null && articalModel.url!.isNotEmpty) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return NewsWebView(url: articalModel.url!);
                },
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  imageUrl:
                      (articalModel.image == null || articalModel.image!.isEmpty)
                      ? "https://cdn.i-scmp.com/sites/default/files/styles/og_image_scmp_generic/public/d8/images/canvas/2026/05/02/ec173696-a64e-48ee-9663-c98421c2eff9_44073314.jpg?itok=WM6w4wF3&v=1777727503"
                      : articalModel.image!,
                  height: 200,
                  width: double.infinity,
          
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      Icon(Icons.error, size: 40),
                ),
              ),
          
              //  Image(
              //   image: NetworkImage(  (articalModel.image == null || articalModel.image!.isEmpty)
              //? "https://cdn.i-scmp.com/sites/default/files/styles/og_image_scmp_generic/public/d8/images/canvas/2026/05/02/ec173696-a64e-48ee-9663-c98421c2eff9_44073314.jpg?itok=WM6w4wF3&v=1777727503"
              // : articalModel.image!,),
              //   height: 200,
              //   width: double.infinity,
              //   fit: BoxFit.cover,
              // ),
              const SizedBox(height: 12),
              Text(
                articalModel.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                articalModel.descreption ?? ' ',
                maxLines: 2,
                style:const TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
