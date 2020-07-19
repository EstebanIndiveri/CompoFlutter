import 'package:flutter/material.dart';

class HomePageTempo extends StatelessWidget {
  // const HomePageTempo({Key key}) : super(key: key);

  final opciones=['Uno','Dos','Tres','Cuatro','Cinco','Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItems()
        children:_creatItemsCorta()
      ),

    ); 
  }
  
  List <Widget> _crearItems(){

  List<Widget>lista=new List<Widget>();

  for (String opt in opciones) {
    final tempWidget=ListTile(
    title:Text(opt),
    );

    lista..add(tempWidget);
    lista..add(Divider(color: Colors.deepPurple.shade900,));
    
  }
    return lista;
  }

  List<Widget> _creatItemsCorta(){
  return opciones.map((item){
  return Column(
    children: <Widget>[
      ListTile(
        title: Text(item + '!!'),
        subtitle: Text('Subtitle'),
        leading: Icon(Icons.add_photo_alternate),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          
        },
      ),
      Divider(color: Colors.deepPurple.shade900,)
    ],
  );
  }).toList();
  }
}