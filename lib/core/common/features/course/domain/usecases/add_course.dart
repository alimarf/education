

import '../../../../../usecases/usecases.dart';
import '../../../../../utils/typdefs.dart';
import '../entities/course.dart';
import '../repos/course_repo.dart';

class AddCourse extends UsecaseWithParams<void, Course> {
  const AddCourse(this._repo);

  final CourseRepo _repo;

  @override
  ResultFuture<void> call(Course params) async => _repo.addCourse(params);
}
