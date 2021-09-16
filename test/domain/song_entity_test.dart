import 'package:flutter_test/flutter_test.dart';
import 'package:sepotipay/domain/entities/song_entity.dart';

void main() {
  group('copyWith', () {
    const String dummyString = 'dummyString';
    const String otherString = 'otherString';
    final Song song = Song(
      title: dummyString,
      singer: dummyString,
      isPlaying: true,
    );
    test('should return overridde existing attribute', () {
      expect(
          song
              .copyWith(
                isPlaying: false,
                singer: otherString,
                title: otherString,
              )
              .props,
          [otherString, otherString, false]);
    });

    test('should not return overridde existing attribute', () {
      expect(song.copyWith().props, song.props);
    });
  });
}
