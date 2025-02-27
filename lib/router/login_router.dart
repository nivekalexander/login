import 'package:go_router/go_router.dart';
import '../features/login/presentation/pages/login_page.dart';

final GoRouter loginRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => LoginPage()),
  ],
);
