import 'dart:convert';

import 'package:wordpress_app/config/wp_config.dart';
import 'package:wordpress_app/models/article.dart';
import 'package:http/http.dart' as http;


class WordPressService {


  // Future<List<Article>?> fetchPostsByCategoryId(int categoryId, int contentAmount) async {
  //   final int _page = 1;
  //   List<Article>? _articles;
  //   var response = await http.get(Uri.parse(
  //       "${WpConfig.websiteUrl}/wp-json/wp/v2/posts/?categories[]=$categoryId&page=$_page&per_page=$contentAmount&_fields=id,date,title,content,custom,link,tags"));
  //   List? decodedData = jsonDecode(response.body);

  //   if (response.statusCode == 200) {
  //     _articles = decodedData!.map((m) => Article.fromJson(m)).toList();
  //   }
  //   return _articles;
  // }


  Future fetchPostsByCategoryIdExceptPostId(int? postId, int? catId, int contentAmount) async {
    var response = await http.get(Uri.parse(
        "${WpConfig.websiteUrl}/wp-json/wp/v2/posts?exclude=$postId&categories[]=$catId&per_page=$contentAmount"));
    List? decodedData = jsonDecode(response.body);
    List<Article>? articles;

    if (response.statusCode == 200) {
      articles = decodedData!.map((m) => Article.fromJson(m)).toList();
    }
    return articles;
  }

  // Future fetchPopularPosts(int postLimit) async {
  //   var response = await http.get(Uri.parse("${WpConfig.websiteUrl}/wp-json/wordpress-popular-posts/v1/popular-posts?limit=$postLimit"));
  //   List? decodedData = jsonDecode(response.body);
  //   List<Article>? articles;

  //   if (response.statusCode == 200) {
  //     articles = decodedData!.map((m) => Article.fromJson(m)).toList();
  //   }
  //   return articles;
  // }


  Future fetchPostsBySearch(String searchText) async {
    var response = WpConfig.blockedCategoryIds.isEmpty
     ? await http.get(Uri.parse("${WpConfig.websiteUrl}/wp-json/wp/v2/posts?per_page=30&search=$searchText"))
     : await http.get(Uri.parse("${WpConfig.websiteUrl}/wp-json/wp/v2/posts?per_page=30&search=$searchText&categories_exclude=" + WpConfig.blockedCategoryIds));
    List? decodedData = jsonDecode(response.body);
    List<Article>? articles;

    if (response.statusCode == 200) {
      articles = decodedData!.map((m) => Article.fromJson(m)).toList();
    }
    return articles;
  }




}
