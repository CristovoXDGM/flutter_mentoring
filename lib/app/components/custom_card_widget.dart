import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCardWidget extends StatefulWidget {
  const CustomCardWidget({super.key});

  @override
  State<CustomCardWidget> createState() => _CustomCardWidgetState();
}

class _CustomCardWidgetState extends State<CustomCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 280 * 0.80,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/gato_oculos.jpg',
                fit: BoxFit.cover,
                height: 280,
                width: 280 / 2,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'texto1',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.lexend(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text('texto1', overflow: TextOverflow.ellipsis),
                const Text('texto1', overflow: TextOverflow.ellipsis),
                const Text('texto1', overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(30),
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
