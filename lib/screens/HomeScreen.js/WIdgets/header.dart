import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              image: AssetImage("assets/pla.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(40.0),
              bottomRight: const Radius.circular(40.0),
            )),
        height: (MediaQuery.of(context).size.height) * 0.3,
        width: (MediaQuery.of(context).size.width),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5.0, 0, 0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 50.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                height: (MediaQuery.of(context).size.height) * 0.3 * 0.3,
                width: (MediaQuery.of(context).size.width)),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                              child: Image(
                                image: AssetImage("assets/bars.svg"),
                              ),
                            ),
                            Text(
                              'Living Room',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 15.0,
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                            ),
                          ],
                        ),
                      )),
                  height: (MediaQuery.of(context).size.height) * 0.3 * 0.3,
                  width: (MediaQuery.of(context).size.width)),
            )
          ],
        ),
      ),
    );
  }
}
