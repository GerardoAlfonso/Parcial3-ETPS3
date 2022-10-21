// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.short_description,
    required this.genre,
    required this.platform,
    required this.publisher,
    required this.developer,
    required this.release_date,
    required this.freetogame_profile_url,

  });

    int   id;
    String title;
    String thumbnail;
    String short_description;
    String genre;
    String platform;
    String publisher;
    String developer;
    String release_date;
    String freetogame_profile_url;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id:json["id"],
        title:json["title"],
        thumbnail:json["thumbnail"],
        short_description:json["short_description"],
        genre:json["genre"],
        platform:json["platform"],
        publisher:json["publisher"],
        developer:json["developer"],
        release_date:json["release_date"],
        freetogame_profile_url:json["freetogame_profile_url"],
        
      );

  Map<String, dynamic> toJson() => {
      "id" : id,
      "title" : title,
      "thumbnail" : thumbnail,
      "short_description" : short_description,
      "genre" : genre,
      "platform" : platform,
      "publisher" : publisher,
      "developer" : developer,
      "release_date" : release_date,
      "freetogame_profile_url" : freetogame_profile_url
        
      };
}
