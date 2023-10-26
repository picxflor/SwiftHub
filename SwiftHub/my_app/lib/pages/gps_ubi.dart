import 'package:flutter/material.dart';
import 'package:my_app/pages/planificacion.dart';




class UbiMap extends StatelessWidget {
  const UbiMap ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UbiCation(),
    );
  }
}


class UbiCation extends StatelessWidget {
  const UbiCation({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
  
      appBar: AppBar(//barra superior
        
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => planificacion()),
                );
          },
        ),
        title: const Text('Ubicación de eventos'),
        actions: [
          IconButton(
            icon: Icon(Icons.add_comment_outlined),
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: Icon(Icons.mark_as_unread_rounded),
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: Icon(Icons.add_location_alt_sharp),
            onPressed: () {
              
            },
          ),
        ],
      ),
      
      body:Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            
            child: 
              
              TextField( 
              decoration: const InputDecoration(
                hintText: 'Buscar...',
                ),
                onChanged: (text) {
                // Barra de busqueda limitada
                },
              ),
          ),
          Expanded( 
            child: ListView(
              children: <Widget>[
                _buildListItem(
                'Lince', '4.6km', 'https://www.google.com/maps/vt/data=yu2dFU8VIGkJKKI8Vmh3_0QronruAEe1uJYRs8NtOlDbTeAPGiuW02sgMP72AhZ_arzgG_M_pRf5yjlYYSMa3h1T7LA7TMwIhUM05KOSeDp5B25ZDxoSqw5BY-3b0kfVQ1MooLGF8gnG_cc9CQYgFqzihem9yFtvj2JFu-h72rwZy7ANiTU_Oj7Epg0UzJuFK5D50JnaA5h9iORKK2sze838GRcur4GU3_IFCECQWxjxWwAnDP2Ev5ttZ9ZHzZZYNmtePU-5twCiAnYM3Q'),
                _buildListItem(
                'San Borja', '4.6km', 'https://www.google.com/maps/vt/data=Ij33GFOJpydVMZOgjS4PltV4hpXofL2OeAVbXy39I-l_JQBKVgzsIn1FrsSlqilr5geYHnCpQSgYNrXDWk8NTTMptFSyMASfwhFvdZ-xXuSpLtOytDsnhXjDffTwA4Y-F7eK2K9RUwEbBA1dlmcKGAKGwwOA1Ynxma-EFJz5qAzkpTysENS40c6Y9_D15J5VDALWFDJWQ9h_kLZAzvUlGwVYA2ARjKQpY2WRZTcP_hpP1Pl2DSAGDToykx8y_Q-lUhPE9G82ylN-1t9C_Q'),
                _buildListItem(
                'San Miguel', '6km', 'https://www.google.com/maps/vt/data=WMEjnPhyg6JilhJh37CjoFu2_ObbGFU4_XL8kdkP6Uhp2YCEWnEDDg0veBWD20IN4oSmj4gSGffX_aVKWiUf-VfrGGVYlzkUnpPmqYozqQYoCVnCVbeYktg1VOHDHW0zSk87jc-fJ-tVXss-IQOYnPRrqF0ErXLnJK7MtcafAf4PJybjhYXCbCyOV1JNlNz6b3BgcCvhIT0zms5PIR3ATBXldU60f-A6RFiosZ3LC5x1g7M8Snj2GRLU1ymoxdwPNqAeSe7Rp2PiEulIfQ'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
        },
        label: const Text('Actualizar'),
        icon: const Icon(Icons.refresh),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,//posision del boton
    );
  }
}

Widget _buildListItem(String title,  subtitle, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.0),
          Text(
            subtitle,
            style: TextStyle(fontSize: 16.0),
          ),
          Image.network(imageUrl),
          
        ],
      ),
    );
  }