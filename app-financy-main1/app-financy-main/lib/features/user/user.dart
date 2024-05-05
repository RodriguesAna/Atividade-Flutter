import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity, // Campo roxo ocupa toda a largura
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFBB59FF), Color(0xFF764898)],
                      stops: [0, 1],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90),
                      bottomRight: Radius.circular(90),
                    ),
                  ),
                  child: SizedBox(height: 100), // Espaço para o avatar
                ),
                // Nome e conta fora do campo roxo
                SizedBox(height: 56), // Espaço entre avatar e texto
                Text(
                  'Enjelin Morgeana',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '@enjelin_morgeana',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 32),
                ListTile(
                  leading:
                      Icon(Icons.person, color: Colors.grey), // Ícone cinza
                  title: Text('Mudar Nome'),
                  onTap: () {
                    // Ação para mudar o nome
                  },
                ),
                ListTile(
                  leading: Icon(Icons.lock, color: Colors.grey), // Ícone cinza
                  title: Text('Mudar Senha'),
                  onTap: () {
                    // Ação para mudar a senha
                  },
                ),
                ListTile(
                  leading:
                      Icon(Icons.logout, color: Colors.grey), // Ícone cinza
                  title: Text('Logout'),
                  onTap: () {
                    // Ação para logout
                  },
                ),
              ],
            ),
            Positioned(
              top: 60, // Define a posição do CircleAvatar
              left: (MediaQuery.of(context).size.width / 2) -
                  50, // Centraliza o avatar
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage('assets/images/woman1.png'), // Adiciona a imagem
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:
            3, // Define a posição do ícone do usuário como selecionada
        showSelectedLabels: false, // Sem rótulos
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: '', // Sem rótulos
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart, color: Colors.grey),
            label: '', // Sem rótulos
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card, color: Colors.grey),
            label: '', // Sem rótulos
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.purple), // Ícone roxo
            label: '', // Sem rótulos
          ),
        ],
      ),
    );
  }
}
