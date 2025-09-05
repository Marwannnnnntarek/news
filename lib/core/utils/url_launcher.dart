import 'package:flutter/material.dart';
import 'package:news/feature/home/data/models/news_model/result.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static Future<void> openNewsLink(
    BuildContext context,
    Result newsItem,
  ) async {
    final String? previewLink = newsItem.link;

    if (previewLink != null && previewLink.isNotEmpty) {
      final Uri uri = Uri.parse(previewLink);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        _showSnackBar(context, 'Could not open preview link');
      }
    } else {
      _showSnackBar(context, 'Preview link is not available for this news');
    }
  }

  static void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}
