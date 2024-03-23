import 'package:app/activeUser/model/song.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
      songName: "Oba nisa",
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
      songName: "Sadawathiye",
      artistName: "Ridma Weerawardana",
      albumArtImagePath: "lib/images/sadawathiye.jpeg",
      audioPath: "assets/sadawathiye.mp3",
    ),
  ];

  late final AudioPlayer _audioPlayer;
  int? _currentSongIndex;
  bool _isPlaying = false;
  Duration _currentDuration = Duration.zero;
  Duration _totalDuration = Duration.zero;

  PlaylistProvider() {
    _audioPlayer = AudioPlayer();
    _audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      if (state == PlayerState.stopped || state == PlayerState.completed) {
        _isPlaying = false;
        notifyListeners();
      }
    });
    _audioPlayer.onPositionChanged.listen((Duration duration) {
      _currentDuration = duration;
      notifyListeners();
    });
    _audioPlayer.onDurationChanged.listen((Duration duration) {
      _totalDuration = duration;
      notifyListeners();
    });
  }

  List<Song> get playlist => _playlist;

  int? get currentSongIndex => _currentSongIndex;

  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;
    notifyListeners();
  }

  bool get isPlaying => _isPlaying;

  Duration get currentDuration => _currentDuration;

  Duration get totalDuration => _totalDuration;

  Future<void> play() async {
    final String path = _playlist[_currentSongIndex!].audioPath;
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource(path));
    _isPlaying = true;
    notifyListeners();
  }

  Future<void> pause() async {
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }

  Future<void> resume() async {
    await _audioPlayer.resume();
    _isPlaying = true;
    notifyListeners();
  }

  Future<void> pauseOrResume() async {
    if (_isPlaying) {
      await pause();
    } else {
      await play();
    }
    notifyListeners();
  }

  void seek(Duration position) {
    _audioPlayer.seek(position);
  }

  void playNextSong() {
    if (_currentSongIndex != null) {
      if (_currentSongIndex! < _playlist.length - 1) {
        currentSongIndex = _currentSongIndex! + 1;
      } else {
        currentSongIndex = 0;
      }
    }
  }

  void playPreviousSong() {
    if (_currentSongIndex != null) {
      if (_currentSongIndex! > 0) {
        currentSongIndex = _currentSongIndex! - 1;
      } else {
        currentSongIndex = _playlist.length - 1;
      }
    }
  }
}
