import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  const Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom'),
        backgroundColor: Colors.amberAccent,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 20,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Space'),
            ),
          ),
          SliverGrid(delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index){
              return Container(
                alignment: Alignment.center,
                color: Colors.grey[100*(index % 9)],
                child: Column(
                children: [
                  Icon(Icons.android,size: 15,),
                  Text('Grid Item $index'),
                ],
                )
                 
              );
            },
          ), gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 350,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,))
        ]
      ),
    );
  }
}