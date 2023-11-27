import 'dart:convert';

import 'package:movie_app/core/constants/api_constants.dart';
import 'package:movie_app/data/models/movies_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
   static const  trendingUrl = 'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apiKEY}';
   static const  ratedUrl = 'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apiKEY}';
   static const  upcomingUrl = 'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constants.apiKEY}';


   Future<List<MoviesModel>> getTrendingMovie()async{
     final response = await http.get(Uri.parse(trendingUrl));
     if(response.statusCode == 200){
      final decodeData = json.decode(response.body)['results'] as List;
      return decodeData.map((e) => MoviesModel.fromJson(e)).toList();
   }else{
      throw Exception('Failed to load movies');
   }
   }

    Future<List<MoviesModel>> getRatedMovie()async{
     final response = await http.get(Uri.parse(ratedUrl));
     if(response.statusCode == 200){
      final decodeData = json.decode(response.body)['results'] as List;
      print(decodeData);
      return decodeData.map((e) => MoviesModel.fromJson(e)).toList();
   }else{
      throw Exception('Failed to load movies');
   }
   }

   Future<List<MoviesModel>> getUpcomingMovie()async{
     final response = await http.get(Uri.parse(upcomingUrl));
     if(response.statusCode == 200){
      final decodeData = json.decode(response.body)['results'] as List;
      print(decodeData);
      return decodeData.map((e) => MoviesModel.fromJson(e)).toList();
   }else{
      throw Exception('Failed to load movies');
   }
   }
}