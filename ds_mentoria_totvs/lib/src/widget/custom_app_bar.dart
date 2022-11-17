part of ds_mentoria_totvs;

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100 * 0.9,
      iconTheme: const IconThemeData().copyWith(color: Colors.black),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      shadowColor: Colors.transparent,
      title: Column(
        children: const [
          Text(
            'Title',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            'Nome do usuario',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      actions: const [
        CircleAvatar(),
        SizedBox(
          width: 30,
        )
      ],
    );
  }
}
