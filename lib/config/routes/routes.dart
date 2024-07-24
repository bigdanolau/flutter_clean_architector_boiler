import 'package:go_router/go_router.dart';
import 'package:mboston/features/authentication/presentation/pages/login.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
  ],
);
