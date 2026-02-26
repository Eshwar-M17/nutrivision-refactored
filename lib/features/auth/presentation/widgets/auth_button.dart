import 'package:flutter/material.dart';

class AuthButton extends StatefulWidget {
  const AuthButton({super.key, required this.title, required this.onTap});
  final String title;

  final  Function onTap;

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  bool isLoading = false;
Future<void> handleTap()async{
  setState(()=>isLoading=true);
 await widget.onTap();
   setState(()=>isLoading=false);

}

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:isLoading?null: handleTap,
      child: Container(
        height: 56,
        width: double.maxFinite,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 15, color: Color.fromRGBO(37, 244, 106, 0.4)),
            BoxShadow(blurRadius: 30, color: Color.fromRGBO(37, 244, 106, 0.1)),
          ],
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(5, 150, 105, 1),
              Color.fromRGBO(37, 244, 106, 1),
            ],
          ),

          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white.withAlpha(20)),
        ),
        child:Center(
          child:isLoading?SizedBox(width: 20,height: 20, child: CircularProgressIndicator()):  Text(
            widget.title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
