import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/*
  PreferredSizeWidget
  플러터에서 특정한 크기를 갖는 위젯을 위한 인터페이스
  Appbar 같은 UI 요소에서 사용되며, 이 위젯이 차지해야 할 공간의 크기를 정의할 수 있음

  여기서는
  IconSearchbar 클래스는 PreferredSizeWidget을 구현하며 해당 위젯의 크기를 명시적으로 제공
  즉, Scaffold 위젯이 IconSearchbar 위젯을 어떻게 배치하고 크기를 조정할지에 필요한 정보를 제공
  그리고 그 정보는 preferredSize 메서드를 통해 지정할 수 있음
 */
class IconSearchbar extends StatelessWidget implements PreferredSizeWidget {
  const IconSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('lottie/movie.json', height: 80),
            SizedBox(width: 15),
            Container(
              width: MediaQuery.of(context).size.width * 0.55,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.cancel),
                  ),
                  hintText: "Search",
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
