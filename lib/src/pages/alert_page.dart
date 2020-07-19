import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Alert Page'),
       backgroundColor: Colors.purple,
    ),
      body: Center(child: RaisedButton(onPressed:()=> _mostrarAlerat(context),
        child: Text('Mostrar Alerta'),
        color: Colors.pink.shade300,
        shape: StadiumBorder(),
        textColor: Colors.white,
        ),
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.pop(context);
    },
    child: Icon(Icons.arrow_back_ios),
    backgroundColor: Colors.purple,
    ),
    );
  }

  void _mostrarAlerat(context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
          title: Text('Titulo'),
          content:Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            Text('Este es el contenido de la caja de la alerta'),
            FlutterLogo(size: 100.0,)
          ],),
          actions: <Widget>[
            FlatButton(child: Text('Cancelar'),onPressed: ()=>Navigator.of(context).pop(),),
            FlatButton(child: Text('ok'),onPressed: (){
              Navigator.of(context).pop();
            },),
          ],
        );
      }
    );
  }
}