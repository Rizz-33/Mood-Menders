import 'package:app/activeUser/model/song.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
      songName: "Kiri Kodu Hithata",
      artistName: "Dinesh Gamage",
      albumArtImagePath: "lib/images/obanisa.jpeg",
      audioPath: "assets/obanisa.mp3",
    ),
    Song(
      songName: "Radhawani",
      artistName: "Supun Perera",
      albumArtImagePath: "lib/images/radawani.jpeg",
      audioPath: "assets/radawani.mp3",
    ),
    Song(
      songName: "Sobana",
      artistName: "Ridma Weerawardana",
      albumArtImagePath: "lib/images/sadawathiye.jpeg",
      audioPath: "assets/sadawathiye.mp3",
    )
  ];

  late AudioPlayer _audioPlayer;
  int? _currentSongIndex;
  bool _isPlaying = false;

  PlaylistProvider() {
    _audioPlayer = AudioPlayer();
    _audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == PlayerState.playing) {
        _isPlaying = true;
      } else {
        _isPlaying = false;
      }
      notifyListeners();
    });
  }

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;
  bool get isPlaying => _isPlaying;

  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;
    notifyListeners();
  }

  void togglePlayPause() {
    if (_isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.resume();
    }
  }
}
