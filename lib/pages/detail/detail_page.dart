import 'package:ebook/pages/detail/ui_components/book_info_head_line.dart';
import 'package:ebook/pages/detail/ui_components/chapters_card.dart';
import 'package:ebook/pages/detail/ui_components/recommend.dart';
import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: size.height *0.45,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.fitWidth),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.1),
                        //HeaderInfo----------------------------
                        const BookInfoHeadLine(
                          name: 'Crushing & Influence',
                          des: 'When the earth was flat and everyone wanted to win the game of the best and people….,',
                          image: 'assets/images/book-1.png',
                        ),
                      ],
                    ),
                  ),
                ),
                //ListofChapters--------------------------
                Padding(
                    padding: EdgeInsets.only(top: size.height *0.42,
                    ),
                  child: Column(
                    children: [
                      ChaptersCard(
                          size: size,
                          name: 'Chapter 1: Money',
                          mess: 'Life is about change',
                          onPressed: () {},
                      ),
                      ChaptersCard(
                        size: size,
                        name: 'Chapter 2: Power',
                        mess: 'Everything loves power',
                        onPressed: () {},
                      ),
                      ChaptersCard(
                        size: size,
                        name: 'Chapter 3: Influence',
                        mess: 'Influence easily like never before',
                        onPressed: () {},
                      ),
                      ChaptersCard(
                        size: size,
                        name: 'Chapter 4: Win',
                        mess: 'Winning is what matters',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Recommending---------------------------
             const Recommend(),

          ],
        ),
      ),
    );
  }
}



