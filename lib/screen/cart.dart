import 'package:ecommerce_app/consts/colors.dart';
import 'package:ecommerce_app/consts/my_icons.dart';
import 'package:ecommerce_app/widgets/cart_empty.dart';
import 'package:ecommerce_app/widgets/cart_full.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Cart extends StatelessWidget {
  // const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List products = [];
    return products.isEmpty ? Scaffold(
      body:  CartEmpty(),
      //CartEmpty(),
    ):Scaffold(
      bottomSheet: checkoutSection(context),
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text('Cart Items Count'),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(MyAppIcon.trash),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 60),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext ctx, int index){
              return CartFull();
            }
        ),
      ),
    );
  }

  Widget checkoutSection(BuildContext ctx){
    return Container(
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex:1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      ColorsConsts.gradiendLStart,
                      ColorsConsts.gradiendLEnd,
                    ],
                    stops: [0.0,0.7],
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Checkout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(ctx).textSelectionColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Total ',
              style: TextStyle(
                color: Theme.of(ctx).textSelectionColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
           Text(
              'US \$179.0',
              //textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
