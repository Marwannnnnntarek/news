class Result {
  String? articleId;
  String? title;
  String? link;
  List<String>? keywords;
  List<String>? creator;
  String? description;
  String? content;
  String? pubDate;
  String? pubDateTz;
  String? imageUrl;
  dynamic videoUrl;
  String? sourceId;
  String? sourceName;
  int? sourcePriority;
  String? sourceUrl;
  String? sourceIcon;
  String? language;
  List<String>? country;
  List<String>? category;
  String? sentiment;
  String? sentimentStats;
  String? aiTag;
  String? aiRegion;
  String? aiOrg;
  String? aiSummary;
  String? aiContent;
  bool? duplicate;

  Result({
    this.articleId,
    this.title,
    this.link,
    this.keywords,
    this.creator,
    this.description,
    this.content,
    this.pubDate,
    this.pubDateTz,
    this.imageUrl,
    this.videoUrl,
    this.sourceId,
    this.sourceName,
    this.sourcePriority,
    this.sourceUrl,
    this.sourceIcon,
    this.language,
    this.country,
    this.category,
    this.sentiment,
    this.sentimentStats,
    this.aiTag,
    this.aiRegion,
    this.aiOrg,
    this.aiSummary,
    this.aiContent,
    this.duplicate,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    articleId: json['article_id'] as String?,
    title: json['title'] as String?,
    link: json['link'] as String?,
    keywords: json['keywords'] as List<String>?,
    creator: json['creator'] as List<String>?,
    description: json['description'] as String?,
    content: json['content'] as String?,
    pubDate: json['pubDate'] as String?,
    pubDateTz: json['pubDateTZ'] as String?,
    imageUrl: json['image_url'] as String?,
    videoUrl: json['video_url'] as dynamic,
    sourceId: json['source_id'] as String?,
    sourceName: json['source_name'] as String?,
    sourcePriority: json['source_priority'] as int?,
    sourceUrl: json['source_url'] as String?,
    sourceIcon: json['source_icon'] as String?,
    language: json['language'] as String?,
    country: json['country'] as List<String>?,
    category: json['category'] as List<String>?,
    sentiment: json['sentiment'] as String?,
    sentimentStats: json['sentiment_stats'] as String?,
    aiTag: json['ai_tag'] as String?,
    aiRegion: json['ai_region'] as String?,
    aiOrg: json['ai_org'] as String?,
    aiSummary: json['ai_summary'] as String?,
    aiContent: json['ai_content'] as String?,
    duplicate: json['duplicate'] as bool?,
  );

  Map<String, dynamic> toJson() => {
    'article_id': articleId,
    'title': title,
    'link': link,
    'keywords': keywords,
    'creator': creator,
    'description': description,
    'content': content,
    'pubDate': pubDate,
    'pubDateTZ': pubDateTz,
    'image_url': imageUrl,
    'video_url': videoUrl,
    'source_id': sourceId,
    'source_name': sourceName,
    'source_priority': sourcePriority,
    'source_url': sourceUrl,
    'source_icon': sourceIcon,
    'language': language,
    'country': country,
    'category': category,
    'sentiment': sentiment,
    'sentiment_stats': sentimentStats,
    'ai_tag': aiTag,
    'ai_region': aiRegion,
    'ai_org': aiOrg,
    'ai_summary': aiSummary,
    'ai_content': aiContent,
    'duplicate': duplicate,
  };
}
