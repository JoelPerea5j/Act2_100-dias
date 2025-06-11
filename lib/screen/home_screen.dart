import 'package:flutter/material.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // NAVBAR
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30, left: 0),
            child: Row(
              children: [
                // LOGO
                Row(
                  children: [
                    const SizedBox(width: 10), // margen de aire mínimo
                    Image.network(
                      "https://raw.githubusercontent.com/JoelPerea5j/im-genes-para-APP-flutter-6J/refs/heads/main/Logo%20Cigarros.jpeg",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "LOGO",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                // MENU
                Row(
                  children: [
                    menuItem("HOME"),
                    menuItem("CAREERMINE"),
                    menuItem("CONTACT"),
                  ],
                ),
              ],
            ),
          ),
          // CONTENIDO PRINCIPAL
          Expanded(
            child: Stack(
              children: [
                // Imagen de fondo
                Positioned.fill(
                  child: Image.network(
                    "https://raw.githubusercontent.com/JoelPerea5j/im-genes-para-APP-flutter-6J/refs/heads/main/Marlboro.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                // Contenido sobre la imagen
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "How do I become",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "A MINING\nENGINEER?",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40,
                            height: 1.2,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 35,
                              vertical: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Read more",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Botón de flecha en la esquina inferior derecha
                Positioned(
                  bottom: 30,
                  right: 30,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget separado para los items del menú
  Widget menuItem(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    );
  }
}
