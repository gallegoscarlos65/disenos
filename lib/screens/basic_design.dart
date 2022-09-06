import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          Image(image: AssetImage('assets/ecotech.jpg')),
          //Titulo 
          Title(),

          //Button Section
          ButtonSection(),

          //Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text('Duis nostrud nisi pariatur aliqua reprehenderit nisi enim cillum consequat non enim. Magna deserunt veniam veniam elit sint. Sunt excepteur nisi veniam aute non culpa eiusmod esse mollit laborum minim aliqua proident. Dolor ea duis et amet deserunt amet sint est quis.'))
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(  
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ecotech', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Chihuahua, Chihuahua, México', style: TextStyle(color: Colors.black45)),
            ],
          ),
          //El expanded se expande todo lo posible entre el widget principal y su hijo
          Expanded(child: Container()),


          Icon(Icons.star, color: Colors.red,),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'Call',),
          CustomButton(icon: Icons.map_sharp, text: 'Router',),
          CustomButton(icon: Icons.share, text: 'Share',),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;


  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 30,),
        Text(this.text, style: TextStyle(color: Colors.blue),),
      ],
    );
  }
}
