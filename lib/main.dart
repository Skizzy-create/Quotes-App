import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override

  List<Quote> quotes = [
    Quote(text: "We are what we repeatedly do. Excellence, therefore, is not an act but a habit.", author: "Aristotle"),
    Quote(text: "The best way out is always through.", author: "Robert Frost"),
    Quote(text: "Do not wait to strike till the iron is hot; but make it hot by striking.", author: "William B. Sprague"),
    Quote(text: "Great spirits have always encountered violent opposition from mediocre minds.", author: "Albert Einstein"),
    Quote(text: "Whether you think you can or think you can’t, you’re right.", author: "Henry Ford"),
    Quote(text: "I know for sure that what we dwell on is who we become.", author: "Oprah Winfrey"),
    Quote(text: "I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times, I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed.", author: "Michael Jordan"),
    Quote(text: "You must be the change you want to see in the world.", author: "Mahatma Gandhi"),
    Quote(text: "What you get by achieving your goals is not as important as what you become by achieving your goals.", author: "Goethei"),
    Quote(text: "You can get everything in life you want if you will just help enough other people get what they want.", author: "Zig Ziglar"),
    Quote(text: "Whatever you do will be insignificant, but it is very important that you do it.", author: "Mahatma Gandhi"),
    Quote(text: "Desire is the starting point of all achievement, not a hope, not a wish, but a keen pulsating desire which transcends everything.", author: "Napoleon Hill"),
    Quote(text: "Failure is the condiment that gives success its flavor.", author: "Truman Capote"),
    Quote(text: "Vision without action is daydream. Action without vision is nightmare.", author: "Japanese Proverb"),
    Quote(text: "In any situation, the best thing you can do is the right thing; the next best thing you can do is the wrong thing; the worst thing you can do is nothing.", author: "Theodore Roosevelt"),
    Quote(text: "If you keep saying things are going to be bad, you have a chance of being a prophet.", author: "Isaac B. Singer"),
    Quote(text: "Success consists of doing the common things of life uncommonly well.", author: "Kartik Aslia"),
    Quote(text: "Losers visualize the penalties of failure. Winners visualize the rewards of success", author: "Kartik Aslia")
  ];


  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text("AWESOME QUOTES"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children : quotes.map((quote) => QuoteCard(
              quote : quote,
            delete : (){
                setState((){
                  quotes.remove(quote);
                });
            }
          )).toList(),
        ),
      ),
    );
  }
}