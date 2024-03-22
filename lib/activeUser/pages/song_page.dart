import 'package:app/activeUser/components/neu_box.dart';
import 'package:app/activeUser/model/playlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(builder: (context, value, child) {
      final playlist = value.playlist;

      final currentSong = playlist[value.currentSongIndex ?? 0];

      return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
          child: Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () => Navigator.pop(context),
                   icon: Icon(Icons.arrow_back),
                   ),
          
                   Text("P L A Y L I S T"),
          
                   IconButton(onPressed: (){},
                    icon: Icon(Icons.menu),
                    ),
                ],
              ),
              const SizedBox(height: 25),
              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(currentSong.albumArtImagePath),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(currentSong.songName, style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20,
                               ),),
                               Text(currentSong.artistName),
                             ],
                           ),
                           Icon(
                             
                             Icons.favorite,
                             color: Colors.red,
                           ),
                         ],
                        ),
                      ),
                  ],
                ),
              ),
                           
               const SizedBox(height: 25,),   
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                   const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("0:00"),
                    
                        Icon(Icons.shuffle),
                    
                        Icon(Icons.repeat),
                    
                        Text("0:00")
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
                      ),
                      child: Slider(
                        min: 0,
                        max: 100,
                        activeColor: Colors.green,
                        value: 50, onChanged: (value){},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25,),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){},
                      child: NeuBox(child: Icon(Icons.skip_previous),
                      ),
                    ),
                  ),
                   SizedBox(width: 20,),
                    Expanded(
                      flex: 2,
                    child: GestureDetector(
                      onTap: (){},
                      child: NeuBox(child: Icon(Icons.play_arrow),
                      ),
                    ),
                  ),
                    SizedBox(width: 20,),
                    Expanded(
                    child: GestureDetector(
                      onTap: (){},
                      child: NeuBox(child: Icon(Icons.skip_next),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    }
    );
  }
}