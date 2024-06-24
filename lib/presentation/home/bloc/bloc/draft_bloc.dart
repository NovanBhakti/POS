import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/models/product_draft_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'draft_bloc.freezed.dart';
part 'draft_event.dart';
part 'draft_state.dart';

class DraftBloc extends Bloc<DraftEvent, DraftState> {
  DraftBloc() : super(const DraftState.initial()) {
    on<_Started>((event, emit) {
      // Handle initial event if needed
    });
    on<_AddToDraft>((event, emit) {
      final currentState = state;
      if (currentState is _Loaded) {
        final updatedProducts =
            List<ProductDraftModel>.from(currentState.products)
              ..add(event.product);
        emit(DraftState.loaded(updatedProducts));
      } else {
        emit(DraftState.loaded([event.product]));
      }
    });
  }
}
