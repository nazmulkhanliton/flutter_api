import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_api/Models/posts_model.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<PostsModel> postList = [];

  Future<List<PostsModel>> getPostApi() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      postList.clear();
      for(Map i in data){
        postList.add(PostsModel.fromJson(i));
      }
      return postList;
    }else{
      return postList;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Test'),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                future: getPostApi(),
                builder: (context, snapshot){
                  if(!snapshot.hasData){
                    return Text('Loading');
                  }else{
                    return ListView.builder(
                      itemCount: postList.length,
                      itemBuilder: (context, index){
                        return Card(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('User Id:\t' + postList[index].id.toString()),
                                SizedBox(height: 15,),
                                Text('Title: \n' +postList[index].title.toString()),
                                SizedBox(height: 15,),
                                Text('Description: \n' +postList[index].body.toString()),
                              ],
                            ),
                          )
                        );
                      },
                    );
                  }
                },
              )
          ),
        ],
      ),
    );
  }
}
