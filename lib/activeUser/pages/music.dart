
import 'package:app/activeUser/components/my_drawer.dart';
import 'package:app/activeUser/model/playlist_provider.dart';
import 'package:app/activeUser/model/song.dart';
import 'package:app/activeUser/pages/song_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MusicPage extends StatefulWidget {
  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {

  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();

    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  void goToSong(int songIndex){
    playlistProvider.currentSongIndex = songIndex;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SongPage(),),
    );
  }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P L A Y L I S T'),  
      ),
      drawer: MyDrawer(),
      body: Consumer<PlaylistProvider>(
       builder: (context, value, child){
         final List<Song> playlist = value.playlist;
         return ListView.builder(
           itemCount: playlist.length,
           itemBuilder: (context, index) { 
             final Song song = playlist[index];
             return ListTile(
               title: Text(song.songName),
               subtitle: Text(song.artistName),
               leading: Image.asset(song.albumArtImagePath),
               onTap: () => goToSong(index),
             );
           }
         );
       }
    ),
  
    );
  }
}
