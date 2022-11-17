part of ds_mentoria_totvs;

class CustomPetBodyScaffold extends StatefulWidget {
  const CustomPetBodyScaffold({
    super.key,
    this.defaultBodyColor = Colors.grey,
    required this.height,
    required this.width,
    required this.child,
  });
  final Color defaultBodyColor;
  final double height;
  final double width;
  final Widget child;

  @override
  State<CustomPetBodyScaffold> createState() => _CustomPetBodyScaffoldState();
}

class _CustomPetBodyScaffoldState extends State<CustomPetBodyScaffold> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.defaultBodyColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: widget.height,
      width: widget.width,
      child: widget.child,
    );
  }
}
