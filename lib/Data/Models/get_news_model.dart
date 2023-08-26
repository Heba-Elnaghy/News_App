class GetNewsModel {
  GetNewsModel({
    required this.status,
    required this.articles,
  });
  late final String status;
  late final List<Articles> articles;

  GetNewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    articles =
        List.from(json['articles']).map((e) => Articles.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['articles'] = articles.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Articles {
  Articles({
    this.author,
    required this.title,
    required this.description,
    required this.url,
    this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
  late final String? author;
  late final String title;
  late final String description;
  late final String url;
  late final String? urlToImage;
  late final String publishedAt;
  late final String content;

  Articles.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['author'] = author;
    _data['title'] = title;
    _data['description'] = description;
    _data['url'] = url;
    _data['urlToImage'] = urlToImage;
    _data['publishedAt'] = publishedAt;
    _data['content'] = content;
    return _data;
  }
}
