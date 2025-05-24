import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: paginaAtual,
        children: const [
          Home(),
          Detalhes(),
          Projetos(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.blue,
        selectedIndex: paginaAtual,
        onDestinationSelected: (index) {
          setState(() {
            paginaAtual = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.info),
            label: 'Detalhes',
          ),
          NavigationDestination(
            icon: Icon(Icons.folder),
            label: 'Projetos',
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue[100],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Icon(
                Icons.person,
                size: 80,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Rafael Frazão da Cunha Brasil',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const Text('Desenvolvedor Mobile'),
            const Text('Flutter/Dart'),
          ],
        ),
      ),
    );
  }
}

class Detalhes extends StatelessWidget {
  const Detalhes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.info, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'Informações Sobre Mim',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Nome: Rafael Frazão da Cunha Brasil',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Endereço: Olinda/PE',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Email: rafaelrafinha8327@gmail.com',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Contato: (81) 98208-3579',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'https://github.com/rafaellfrazao',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 12),
              const Divider(),
              const Row(
                children: [
                  Icon(Icons.flag, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'Objetivos',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Busco oportunidades na área de TI, principalmente com desenvolvimento de aplicativos mobile. '
                'Também possuo conhecimentos em manutenção e suporte técnico em informática.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 12),
              const Divider(),
              const Row(
                children: <Widget>[
                  Icon(Icons.school, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'Escolaridade',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Ensino Médio Completo',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Curso Técnico em Informática (nível médio)',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Período: Início em 2023 / Conclusão prevista para 2025 (cursando)',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Curso na Udemy: Flutter/Dart',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Status: Cursando',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 12),
              const Divider(),
              const Row(
                children: [
                  Icon(Icons.work, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'Experiências',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Empresa: Grupo Provider',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Cargo: Operador de Telemarketing',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 12),
              const Text(
                'Observação: Ainda não possuo experiência profissional na área de desenvolvimento, mas já criei '
                'aplicativos e realizo manutenção de computadores por conta própria.',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'alguns Projetos "no momento" se encontra no github',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
