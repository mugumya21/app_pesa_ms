import 'package:app_pesa_ms/apis/album_request.dart';
import 'package:app_pesa_ms/apis/client_request.dart';
import 'package:app_pesa_ms/models/Client.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {

  const ClientPage({super.key});

  @override
  State<ClientPage> createState() => _ClientPageState();

}
class _ClientPageState extends State<ClientPage>{
  late Future<Client> futureClient;
  @override
  void initState(){
    super.initState();
    futureClient = fetchClient();
  }


  @override

  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ) , title: 'Clients',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clients'),
        ),
        body: Center(
          child: FutureBuilder<Client>(
              future: futureClient,
              builder: (context, snapshot){
                if(snapshot.hasData){
                  return Text(snapshot.data!.id.toString());
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