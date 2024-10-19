
import 'package:news_app/Models/categories_news_model.dart';
import 'package:news_app/repository/news_repository.dart';
import '../Models/news_channels_headlines_model.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchnewChannelheadlineApi(
      channelName) async {
    final response = await _rep.fetchnewChannelheadlineApi(channelName);
    return response;
  }

  Future<CategoriesNewsModel> fetchCategriesNewsApi(String category) async {
    final response = await _rep.fetchCategoriesNewsApi(category);
    return response;
  }
}