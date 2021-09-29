import 'package:anime/repository/models/anime_model.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider((ref) => Dio());

class AnimeRepository {
  final Reader _read;

  AnimeRepository(this._read);

  Future<AnimeModel> getAnime(String url) async {
    final endpoint = 'https://trace.moe/api/search?url=$url';
    try {
      final response = await _read(dioProvider).get(endpoint);
      return animeModelFromJson(response.data);
    } on DioError catch (e) {
      if (e.response!.data != null) {
        throw e.response!.data;
      }
      throw e.error;
    }
  }
}
