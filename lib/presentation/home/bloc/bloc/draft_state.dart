part of 'draft_bloc.dart';

@freezed
class DraftState with _$DraftState {
  const factory DraftState.initial() = _Initial;
  const factory DraftState.loaded(List<ProductDraftModel> products) = _Loaded;
}
