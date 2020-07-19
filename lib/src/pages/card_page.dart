import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1(){
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(children: <Widget>[
        ListTile(leading: Icon(Icons.photo_album,color:Colors.red.shade500),
        title: Text('Titulo Card'),
        subtitle: Text('esta es la descripción de la tarjeta para que se vea como es poco de contenido en la card'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
          FlatButton(child: Text('Cancelar'),onPressed: (){},color: Colors.red,),
          FlatButton(child: Text('Ok'),onPressed: (){},)
        ],)
      ],),
    );
  }

  Widget _cardTipo2(){

    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 6.0,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(children: <Widget>[
        FadeInImage(
          image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          // height: 34.0,
          fit:BoxFit.cover,
        )
        ,
        // Image(image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg'),),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('no tengo idea de que poner'),)
        
      ],),
    );
  }
}