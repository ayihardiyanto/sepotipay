import 'package:flutter/material.dart';
import 'package:sepotipay/presentation/widgets/molecules/song_tile.dart';

class SongList extends StatelessWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            decoration: InputDecoration(hintText: 'Search...', prefixIcon: Icon(Icons.search)),
          ),
        ),
        Expanded(
          child: Scrollbar(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 100,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              physics: BouncingScrollPhysics(),
              controller: ScrollController(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: InkWell(onTap: () {}, child: SongTile()),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
