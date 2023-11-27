import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? imagePath;
  final String jpName;
  final String enName;
  final String soundPath;

  const ItemModel({
    this.imagePath,
    required this.jpName,
    required this.enName,
    required this.soundPath,
  });

  Future playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(soundPath));
  }
}
