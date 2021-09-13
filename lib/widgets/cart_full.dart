import 'package:ecommerce_app/consts/colors.dart';
import 'package:ecommerce_app/provider/dark_theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';

class CartFull extends StatefulWidget {
  const CartFull({Key? key}) : super(key: key);

  @override
  _CartFullState createState() => _CartFullState();
}

class _CartFullState extends State<CartFull> {

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Container(
      height: 130,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: const Radius.circular(16.0),
          topRight: const Radius.circular(16.0),
        ),
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(
        children: [
          Container(
            width: 135,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://www.searchpng.com/wp-content/uploads/2019/01/Iwatch-PNG-Image-715x846.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment : MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'Smart Watch',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(32.0),
                          //splashColor
                          onTap: (){},
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Icon(
                              Entypo.cross,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Price'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '450\$',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Sub Total:'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '450\$',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: themeChange.darkTheme
                                ? Colors.brown.shade900
                                : Theme.of(context).accentColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                   children: [
                     Text(
                       'Ships Free',
                       style: TextStyle(
                         color: themeChange.darkTheme
                             ? Colors.brown.shade900
                             : Theme.of(context).accentColor,
                       ),
                     ),
                     Spacer(),
                     Material(
                       color: Colors.transparent,
                       child: InkWell(
                         borderRadius: BorderRadius.circular(4.0),
                         //splashColor
                         onTap: (){},
                         child: Container(
                           child: Padding(
                             padding: const EdgeInsets.all(1.0),
                             child: Icon(
                               Entypo.minus,
                               color: Colors.red,
                               size: 20,
                             ),
                           ),
                         ),
                       ),
                     ),
                     Card(
                       elevation: 12,
                       child: Container(
                         width: MediaQuery.of(context).size.width * 0.12,
                         padding: const EdgeInsets.all(8.0),
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                             colors: [
                               ColorsConsts.gradiendLStart,
                               ColorsConsts.gradiendLEnd,
                             ],
                             stops: [0.0,0.7],
                           ),
                         ),
                         child: Text(
                           '1',
                           textAlign: TextAlign.center,
                         ),
                       ),
                     ),
                     Material(
                       color: Colors.transparent,
                       child: InkWell(
                         borderRadius: BorderRadius.circular(4.0),
                         //splashColor
                         onTap: (){},
                         child: Container(
                           child: Padding(
                             padding: const EdgeInsets.all(1.0),
                             child: Icon(
                               Entypo.plus,
                               color: Colors.green,
                               size: 20,
                             ),
                           ),
                         ),
                       ),
                     ),
                   ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
