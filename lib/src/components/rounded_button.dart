import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedIconButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const RoundedIconButtonWidget({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
        ],
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            colors: [Color(0xFFFB724C), Color(0xFFFE904B)]),
        color: Colors.deepPurple.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
            minimumSize: const Size(double.infinity, 36.0)),
        onPressed: onTap,
        icon: const Icon(Icons.add_rounded),
        label: Text(
          label,
          style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.w700,
              fontSize: 10),
        ),
      ),
    );
  }
}

class RoundedButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool loading;

  const RoundedButtonWidget({
    Key? key,
    required this.label,
    required this.onTap,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          maximumSize: const Size(double.infinity, 60.0),
          minimumSize: const Size(double.infinity, 50.0)),
      onPressed: onTap,
      child: Ink(
        height: double.infinity,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
          ],
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              colors: [Color(0xFFFB724C), Color(0xFFFE904B)]),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(minWidth: 88.0),
          child: loading
              ? Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).colorScheme.secondary),
                  ),
                )
              : Text(
                  label,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
        ),
      ),
    );
  }
}
