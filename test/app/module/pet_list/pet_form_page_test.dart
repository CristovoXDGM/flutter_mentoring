import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/bloc/counter_bloc.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/bloc/counter_bloc_events.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/bloc/counter_bloc_states.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/pet_form_page.dart';
import 'package:mentoring_app_totvs/app/widgets/custom_pet_shop_scaffold.dart';

class MockCounterBloc extends MockBloc<CounterBlocEvents, CounterBLocState>
    implements ICounterBloc {}

void main() {
  late ICounterBloc counterBloc;

  setUpAll(() {
    counterBloc = MockCounterBloc();
  });

  testWidgets('pet form page ...', (tester) async {
    whenListen(
      counterBloc,
      Stream.fromIterable(
        [
          InitialCounterBlocState(),
        ],
      ),
      initialState: InitialCounterBlocState(),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: PetFormPage(counterBloc),
      ),
    );

    await tester.pumpAndSettle();

    final finderCustomScaffold = find.byType(CustomPetShopScaffold);
    final finderTextButon = find.byType(TextButton);
    final finderIncrementText = find.text('Increment');
    final finderDecrementText = find.text('decrement');

    expect(finderCustomScaffold, findsOneWidget);
    expect(finderTextButon, findsWidgets);
    expect(finderTextButon, findsNWidgets(2));
    expect(finderIncrementText, findsOneWidget);
    expect(finderDecrementText, findsOneWidget);
  });
}
