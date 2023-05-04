// ignore: file_names
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsCard extends StatefulWidget {
  final String headline;
  final String description;
  final String urlToImage;
  final String url;
  NewsCard(
      {required this.headline,
      required this.description,
      required this.urlToImage,
      required this.url});

  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  bool _isExpanded = false;
  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(widget.url))) {
      throw Exception('Could not launch $widget.url');
    }
  }

  @override
  Widget build(BuildContext context) {
    // final Uri _url = Uri.parse('https://flutter.dev');
    // print(widget.urlToImage);
    return OutlinedButton(
        onPressed: () => _launchUrl(),
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.urlToImage != "null"
                  ? Stack(
                      alignment: AlignmentDirectional.bottomStart,
                      children: [
                        Container(
                          //add exception for not loaded image

                          child: Image.network(widget.urlToImage),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [
                                Colors.white38.withOpacity(0.9),
                                Colors.white38.withOpacity(0.7),
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              widget.headline,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(
                      child: Text(
                        widget.headline,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
              const SizedBox(height: 8.0),
              widget.description != "null"
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AnimatedSize(
                          duration: Duration(milliseconds: 300),
                        ),
                        const SizedBox(height: 8.0),
                        widget.description.length > 50
                            ? TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isExpanded = !_isExpanded;
                                  });
                                },
                                child: Text(
                                  _isExpanded ? 'Less' : 'More',
                                  style: const TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              )
                            : Container(),
                      ],
                    )
                  : Container(),
            ],
          ),
        ));
  }
}
