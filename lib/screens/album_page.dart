import 'package:app_pesa_ms/apis/album_request.dart';
import 'package:app_pesa_ms/models/album.dart';
import 'package:flutter/material.dart';

class AlbumPage extends StatefulWidget {

  const AlbumPage({super.key});

  @override
  State<AlbumPage> createState() => _AlbumPageState();

}
class _AlbumPageState extends State<AlbumPage>{
  late Future<Album> futureAlbum;
  @override
  void initState(){
    super.initState();
    futureAlbum = fetchAlbum();
  }


  @override

  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ) , title: 'Fetch Data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Album data'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
              future: futureAlbum,
              builder: (context, snapshot){
                if(snapshot.hasData){
                  return Text(snapshot.data!.userId.toString());
                }else if(snapshot.hasError){
                  return Text('${snapshot.error}');
                }

                return const CircularProgressIndicator();
              }
          ),
        ),
      ),

    );
  }
}