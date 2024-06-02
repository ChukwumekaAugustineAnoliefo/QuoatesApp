import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List quotes = [
    "First, solve the problem. Then, write the code. - John Johnson",
    "Usability’s strength is in identifying problems, while design’s strength is in identifying solutions.– Alan Cooper",
    "Programming is just saying “I have a meeting in an hour so better not start on this yet to yourself until you die. – Alex Engelberg",
    "The computer was born to solve problems that did not exist before. – Bill Gates",
    "Sometimes it pays to stay in bed on Monday, rather than spending the rest of the week debugging Monday’s code.” – Dan Salomon"
        "Optimism is an occupational hazard of programming: feedback is the treatment. - Kent Beck",
    "When to use iterative development? You should use iterative development only on projects that you want to succeed. -– Martin Fowler",
    "Simplicity is the soul of efficiency. – Austin Freeman",
    "Before software can be reusable it first has to be usable. – Ralph Johnson",
    "Make it work, make it right, make it fast. – Kent Beck",
    "Good programmers know what to write. Great ones know what to rewrite and reuse — Eric S. Raymond",
    "In programming, if someone tells you “you’re overcomplicating it,” they’re either 10 steps behind you or 10 steps ahead of you. — Andrew Clark",
    "Measuring programming progress by lines of code is like measuring aircraft building progress by weight. – Bill Gates"
        "There are only two kinds of languages: the ones people complain about and the ones nobody uses. – Bjarne Stroustrup",
    "The best error message is the one that never shows up. - Thomas Fuchs",
    "Programming isn't about what you know; it's about what you can figure out.- Chris Pine",
    "The sooner you start to code, the longer the program will take.  - Roy Carlson",
    "First, solve the problem. Then, write the code. - John Johnson",
    "The function of good software is to make the complex appear to ,be simple.- Grady Booch",
    "Good code is its own best documentation. - Steve McConnell",
    "The best way to predict the future is to implement it. - David Heinemeier Hansson",
    "Software is like sex: It's better when it's free. - Linus Torvalds",
    "The only way to go fast is to go well.  - Robert C. Martin",
    "It's not a bug, it's an undocumented feature! - Anonymous",
    "If debugging is the process of removing software bugs, then programming must be the process of putting them in. - Edsger Dijkstra",
    "Software is a great combination of artistry and engineering. - Bill Gates",
    "Good programmers write code that humans can understand. - Martin Fowler",
    "Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away. - Antoine de Saint-Exupéry",
    "Testing leads to failure, and failure leads to understanding. - Burt Rutan",
    "The best code is no code at all. - Jeff Atwood",
    "The most important skill for a developer is the ability to Google. - John Sonmez",
    "Make it work, make it right, make it fast. - Kent Beck",
    "Every great developer you know got there by solving problems they were unqualified to solve until they actually did it. - Patrick McKenzie",
    "Good software, like wine, takes time. - Joel Spolsky",
    "Programming is the art of telling another human what one wants the computer to do. - - Donald Knuth"
        "Code never lies; comments sometimes do. - Ron Jeffries",
    "It's not just what it looks like and feels like. Design is how it works. - Steve Jobs",
    "Software is a gas; it expands to fill its container. - Nathan Myhrvold",
    "The best programmers are not problem solvers; they are problem preventers. - Robert C. Martin",
    "Programming can be fun if you give it a chance. - Charles Petzold",
    "The computer is incredibly fast, accurate, and stupid. Man is incredibly slow, inaccurate, and brilliant. The marriage of the two is a force beyond calculation. - Leo Cherne",
    "Coding is like writing poetry in a foreign language where every word has to be perfect.- Jamie Zawinski",
    "If you think it's expensive to hire a professional to do the job, wait until you hire an amateur. - Red Adair",
    "The key to performance is elegance, not battalions of special cases. - Jon Bentley",
    "Software developers are like poets. Both create from nothing, and both must make the abstract concrete.  - Grady Booch",
    "Software is a great combination between artistry and engineering. - Bill Atkinson",
    "The computer is a bicycle for the mind. - Steve Jobs",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  width: 400,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(14.5)),
                  margin: const EdgeInsets.all(
                    30.0,
                  ),
                  child: Center(
                    child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontStyle: FontStyle.italic,
                        fontSize: 16.5,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 18.0,
              ),
              child: ElevatedButton.icon(
                onPressed: _showQuote,
                // color:Colors.black,
                label: const Text(
                  'Inspire me',
                  style: TextStyle(color: Colors.white, fontSize: 18.8),
                ),
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.teal,
                  fixedSize: const Size.fromWidth(100),
                  padding: const EdgeInsets.all(10),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index++;
    });
  }
}
