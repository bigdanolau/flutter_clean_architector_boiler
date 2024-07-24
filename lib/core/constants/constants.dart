import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static final String baseUrl =
      dotenv.env['VAR_NAME'] ?? 'https://localhost:3000';
}
