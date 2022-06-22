import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '../components/center_element.dart';
import '../core/io/io_handler.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    Key? key,
    required this.dataPath,
    required this.pageId,
  }) : super(key: key);

  final String? dataPath;
  final int pageId;

  @override
  Widget build(BuildContext context) {
    return CenterElement(
      children: [
        Expanded(
          child: FutureBuilder(
            future: IOHandler.getStringById(pageId),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? MarkdownWidget(
                      data: snapshot.data as String,
                      styleConfig: StyleConfig(
                        markdownTheme: MarkdownTheme.darkTheme,
                        imgBuilder: (url, attributes) => Image.asset(
                          url,
                          scale: 2,
                        ),
                        videoBuilder: (url, attributes) {
                          final controller = YoutubePlayerController(
                            initialVideoId:
                                YoutubePlayerController.convertUrlToId(url!)!,
                          );
                          return SizedBox(
                            width: 480,
                            child: YoutubePlayerIFrame(
                              controller: controller,
                              gestureRecognizers: const {},
                            ),
                          );
                        },
                        pConfig: PConfig(
                          linkGesture: (linkWidget, url) {
                            return MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                child: linkWidget,
                                onTap: () => launchUrl(
                                  Uri.parse(url!),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  : Container();
            },
          ),
        ),
        Flexible(
          flex: 0,
          child: ElevatedButton(
            child: const Text('Back'),
            onPressed: () {
              Beamer.of(context).beamToNamed('/');
            },
          ),
        ),
      ],
    );
  }
}
