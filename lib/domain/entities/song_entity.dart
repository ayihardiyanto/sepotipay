import 'package:sepotipay/domain/entities/base_entity.dart';

class Song extends BaseEntity {
  final String title;
  final String singer;
  final bool isPlaying;
  Song({
    required this.title,
    required this.singer,
    this.isPlaying = false,
  });
  @override
  List<Object?> get props => [title, singer, isPlaying];

  @override
  Song copyWith({
    String? title,
    String? singer,
    bool? isPlaying,
  }) {
    return Song(
      title: title ?? this.title,
      singer: singer ?? this.singer,
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }
}
