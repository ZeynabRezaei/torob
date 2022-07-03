import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Row(
          children: [
            Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.shopping_cart, size: 30,),
                      Text("فروشگاه", style: TextStyle(fontSize: 16, ),),
                      SizedBox(height: 25,),
                      Icon(Icons.account_tree_rounded, size: 30,),
                      Text("ادغام", style: TextStyle(fontSize: 16, ),),
                      SizedBox(height: 25,),
                      Icon(Icons.chat_bubble_outline_rounded, size: 30,),
                      Text("پشتیبانی", style: TextStyle(fontSize: 16, ),),
                      SizedBox(height: 25,),
                      Container(
                        height: 93,
                        width: 93,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              children: [
                                Icon(Icons.person, size: 30, color: Colors.white),
                                Text("حساب من", style: TextStyle(fontSize: 16, color: Colors.white),),
                                SizedBox(height: 25),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Container(
              width: 180,
              color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(6)
                        ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4.0),
                            child: Text("اطلاعات کاربری", style: TextStyle(color: Colors.white),),
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("خروج",),
                    ),
                  ],
                )
            ),
            SizedBox(width: 150,),
            Column(
              children: [
                SizedBox(height: 50,),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width - 600,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("اطلاعات فردی", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                        SizedBox(height: 10,),
                        Text("شماره موبایل", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Container(
                              width: 600,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(color: Colors.grey)
                              ),
                              child: Center(child: Text("09120182245")),
                            ),
                            SizedBox(width: 30,),
                            Container(
                              width: 150,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(color: Colors.blue, width: 2)
                              ),
                              child: Center(child: Text("تغییر شماره", style: TextStyle(color: Colors.blue,),)),
                            )
                          ],
                        ),
                        SizedBox(height: 30,),
                        Text("ایمیل", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Container(
                              width: 570,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(color: Colors.grey)
                              ),
                              child: Center(child: Text(" ")),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              width: 190,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(color: Colors.blue, width: 2)
                              ),
                              child: Center(child: Text("دریافت کد تایید", style: TextStyle(color: Colors.blue,),)),
                            )
                          ],
                        ),
                        SizedBox(height: 30,),
                        Text("نام خانوادگی رابط فروشگاه", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Container(
                              width: 780,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(color: Colors.grey)
                              ),
                              child: Center(child: Text(" ")),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
