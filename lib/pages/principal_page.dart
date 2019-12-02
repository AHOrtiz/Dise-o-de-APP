import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principla Pagina'),
      ),
      drawer: MenuLateral(),
      body: Card(
        child: Container(
          child: Center(
            child: Image(
              image: AssetImage('assets/mascotas.png'),
            ),
          ),
        ),
      )
    );
  }
}

class MenuLateral extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Hola'),
              accountEmail: Text('alli'),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://www.messagez.com/wp-content/gallery/azores/waiting-for-my-love-photography-by-messagez-com_.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            ListTile(
              title: Text('Gatitos'),
              onTap: () {
                Navigator.pushNamed(context, 'gatitos');
              },
            ),
            ListTile(
              title: Text('Perritos'),
              onTap: () {
                Navigator.pushNamed(context,'perritos');
              },
            )
          ],
        ),
      );
    }
  }