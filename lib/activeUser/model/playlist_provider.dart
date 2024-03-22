import 'package:app/activeUser/model/song.dart';
import 'package:flutter/material.dart';


class PlaylistProvider extends ChangeNotifier{
final List<Song> _playlist = [
Song(songName: "Nuba daka ma", artistName: "supun", albumArtImagePath: "assets/why3.jpg", audioPath: "assets/nubadakama.mp3"),
Song(songName: "Oba nisa", artistName: "Bathiya N Santhush", albumArtImagePath: "assets/bathiya.jpg", audioPath: "assets/obanisa.mp3"),
Song(songName: "Neth Manema", artistName: "Dilu Beats", albumArtImagePath: "assets/neth.jpg", audioPath: "assets/nethmanema.mp3"),
];

int? _currentSongIndex;

List<Song> get playlist => _playlist;
int? get currentSongIndex => _currentSongIndex;


set currentSongIndex(int? newIndex){
  _currentSongIndex = newIndex;

  notifyListeners();
}

}