

import '../../../../../usecases/usecases.dart';
import '../../../../../utils/typdefs.dart';
import '../entities/course.dart';
import '../repos/course_repo.dart';

class GetCourses extends UsecaseWithoutParams<List<Course>> {
  const GetCourses(this._repo);

  final CourseRepo _repo;

  @override
  ResultFuture<List<Course>> call() async => _repo.getCourses();
}
