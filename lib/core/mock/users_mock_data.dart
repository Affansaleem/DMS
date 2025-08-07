import '../../features/dashboard/data/models/user_model.dart';

class UserMockData {
  static List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Affan Saleem',
      countryCode: '+92',
      dob: DateTime(1995, 5, 10),
      password: 'pass123',
      email: 'affan@example.com',
      department: 'Engineering',
    ),
    UserModel(
      id: 2,
      name: 'Sara Khan',
      countryCode: '+92',
      dob: DateTime(1990, 11, 22),
      password: 'sara2024',
      email: 'sara.khan@example.com',
      department: 'Marketing',
    ),
    UserModel(
      id: 3,
      name: 'Usman Ali',
      countryCode: '+92',
      dob: DateTime(1988, 3, 15),
      password: 'usman@321',
      email: 'usman.ali@example.com',
      department: 'Finance',
    ),
    UserModel(
      id: 4,
      name: 'Hira Iqbal',
      countryCode: '+92',
      dob: DateTime(1992, 8, 1),
      password: 'hira456',
      email: 'hira.iqbal@example.com',
      department: 'HR',
    ),
    UserModel(
      id: 5,
      name: 'Zain Raza',
      countryCode: '+92',
      dob: DateTime(1994, 6, 30),
      password: 'zain789',
      email: 'zain.raza@example.com',
      department: 'Design',
    ),
    UserModel(
      id: 6,
      name: 'Ayesha Siddiqui',
      countryCode: '+92',
      dob: DateTime(1996, 1, 12),
      password: 'ayesha123',
      email: 'ayesha.s@example.com',
      department: 'Product',
    ),
  ];
}
