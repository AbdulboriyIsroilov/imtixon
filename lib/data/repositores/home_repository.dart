import '../../core/dio_core.dart';
import '../models/categories_model.dart';
import '../models/recently_model.dart';
import '../models/recipes_model.dart';
import '../models/top_chef_model.dart';

class HomeRepository {
  List<CategoriesModel> categoriy = [];

  Future<List<CategoriesModel>> getCategoriy() async {
    if (categoriy.isNotEmpty) return categoriy;

    var reseponse = await dio.get("/categories/list");

    if (reseponse.statusCode != 200) {
      throw Exception(reseponse.data);
    }
    categoriy = (reseponse.data as List)
        .map((item) => CategoriesModel.fromJson(item))
        .toList();
    return categoriy;
  }

  List<RecipesModel> recipe = [];

  Future<List<RecipesModel>> getRecipe() async {
    if (recipe.isNotEmpty) return recipe;

    var reseponse = await dio.get("/recipes/list?Page=6&Limit=2");
    if (reseponse.statusCode != 200) {
      throw Exception(reseponse.data);
    }
    recipe = (reseponse.data as List)
        .map((item) => RecipesModel.fromJson(item))
        .toList();
    return recipe;
  }

  List<TopChefModel> topChef = [];

  Future<List<TopChefModel>> getTopChef() async {
    if (topChef.isNotEmpty) return topChef;

    var reseponse = await dio.get("/top-chefs/list?Limit=4");
    if (reseponse.statusCode != 200) {
      throw Exception(reseponse.data);
    }
    topChef = (reseponse.data as List)
        .map((item) => TopChefModel.fromJson(item))
        .toList();
    return topChef;
  }

  List<RecentlyModel> recently = [];

  Future<List<RecentlyModel>> getRecently() async {
    if(recently.isNotEmpty) return recently;

    var reseponse = await dio.get("/recipes/list?Page=11&Limit=2");
    if (reseponse.statusCode != 200) {
      throw Exception(reseponse.data);
    }
    recently = (reseponse.data as List)
        .map((item) => RecentlyModel.fromJson(item))
        .toList();
    return recently;
  }
}
