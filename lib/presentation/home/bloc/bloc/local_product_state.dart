part of 'local_product_bloc.dart';

@freezed
class LocalProductState with _$LocalProductState {
  const factory LocalProductState.initial() = _Initial;
  const factory LocalProductState.loading() = _Loading;
  const factory LocalProductState.loaded(List<Product> products) = _Loaded;
  const factory LocalProductState.loadedOrder(List<OrderModel> order) =
      _LoadedOrder;
  const factory LocalProductState.error(String message) = _Error;
  const factory LocalProductState.searching() =
      _Searching; // Tambahkan state untuk menandai bahwa sedang dalam proses pencarian
  const factory LocalProductState.searched(List<Product> searchResults) =
      _Searched; // Tambahkan state untuk menampilkan hasil pencarian
  const factory LocalProductState.searchError(String message) =
      _SearchError; // Tambahkan state untuk menangani kesalahan saat pencarian
}
