import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  final String buttonText;
  final Widget onTap;
  final Color color;
  final Color textColor;

  const WelcomeButton(
      {super.key,
      required this.buttonText,
      required this.onTap,
      required this.color,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Đoạn code này sử dụng Navigator.push method để thêm một trang mới được tạo bởi MaterialPageRoute vào stack điều hướng. MaterialPageRoute được cấu hình với một lambda function trả về một const SignUpScreen widget.
        Navigator.push(context, MaterialPageRoute(builder: (e) => onTap));
      },
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            color: color,
            borderRadius:
                const BorderRadius.only(topLeft: Radius.circular(50.0))),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: textColor),
        ),
      ),
    );
  }
}



// GestureDetector trong Flutter là một widget cho phép bạn nhận diện các cử chỉ của người dùng trên màn hình. Nó hoạt động như một lớp phủ trong suốt có thể được đặt trên bất kỳ widget nào khác. Khi người dùng tương tác với widget được phủ bởi GestureDetector, widget này sẽ phát hiện các cử chỉ và gọi các hàm xử lý tương ứng.