import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:tasks_app/config/config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasks_app/src/tasks/domain/domain.dart';

class TasksDataSourceImpl extends TasksDataSource {
  @override
  Future<List<Task>> fetchAllTasks(NotifierProviderRef ref) async {
    try {
      final HttpClient httpClient = ref.watch(httpClientProvider);
      final response = await httpClient.post(
        url: 'https://api.empatiaindustries.com/users/login',
        data: {'email': 'email', 'password': 'password'},
      );
      final decodedToken = JwtDecoder.decode(response);

      return [
        Task(userID: decodedToken['sub']),
      ];
    } catch (e) {
      throw Exception('Ha ocurrido un error');
    }
  }
}
