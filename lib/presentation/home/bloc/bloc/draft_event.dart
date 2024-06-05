part of 'draft_bloc.dart';

@freezed
class DraftEvent with _$DraftEvent {
  const factory DraftEvent.started() = _Started;
  const factory DraftEvent.addToDraft(ProductDraftModel product) = _AddToDraft;
}
