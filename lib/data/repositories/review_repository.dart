import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyperhire_assigment/data/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'review_repository.g.dart';

@riverpod
ReviewRepository reviewRepository(Ref ref) {
  return ReviewRepository();
}

class ReviewRepository {
  Future<List<User>> getTopReviewers() async {
    return List.generate(10, (index) {
      final rank = index + 1;
      return User(
        name: 'Name${rank < 10 ? '0$rank' : '$rank'}',
        rank: rank,
        image: 'profile_$rank.jpeg',
      );
    });
  }
}
