part of 'courses_cubit.dart';

@immutable
sealed class CoursesState {}

final class CoursesInitial extends CoursesState {}

class LoadingCoursesState extends CoursesState {}

class SuccessCoursesState extends CoursesState {}

class ErrorCoursesState extends CoursesState {}
