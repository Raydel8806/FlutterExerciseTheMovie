import 'package:flutter_test/flutter_test.dart';
import 'package:flutterexercisethemovie/app/app.dart';
import 'package:flutterexercisethemovie/app/presentation/screens/movie_detail_page/movie_detail_page.dart';

void main() {
  group('App', () {
    testWidgets('renders MovieDetailPage', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(MovieDetailPage), findsOneWidget);
    });
  });
}
