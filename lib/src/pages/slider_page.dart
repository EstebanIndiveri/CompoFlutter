import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider=100.0;
  bool _bloquearCheck=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body:Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column(children: <Widget>[
          _crearSlider(),
          _checkBox(),
          _crearSwitch(),
          Expanded(child: _crearImagen())
        ],),
      )
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent ,
      label:'Tamaño de la imagen',
      // divisions: 20,
      onChanged: _bloquearCheck?null:(value) {
        setState(() {
        _valorSlider=value;
        });
      },
      value: _valorSlider,
      min:10.0,
      max:400.0,
    );
  }

  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://i.dlpng.com/static/png/6587033_preview.png'),
      width: _valorSlider,
      fit:BoxFit.contain
    );
  }

  Widget _checkBox() {

    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (value){
    //     setState(() {
    //       _bloquearCheck=value;
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (value){
        setState(() {
          _bloquearCheck=value;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (value){
        setState(() {
          _bloquearCheck=value;
        });
      },
    );
  }
}