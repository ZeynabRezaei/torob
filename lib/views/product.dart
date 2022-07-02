import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:torob_flutter/views/buying.dart';
import 'package:torob_flutter/views/popup.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var companyName = ["تکنو لایف", "کوک موبایل", "بروزلند شاپ", "فرنا", 'با ما همراه'];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150.0), // here the desired height
          child: AppBar(
            flexibleSpace: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/medium.png", height: 50,),
                            const Text("ترب", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: const BorderRadius.only(topRight: Radius.circular(6), bottomRight: Radius.circular(6))
                                    ),
                                    child: TextFormField(
                                      autofocus: true,
                                      enableSuggestions: true,
                                      // autofillHints: ,
                                      onChanged: (value) {},
                                      style: const TextStyle(fontSize: 16),
                                      maxLines: 1,
                                      cursorColor: Colors.red,
                                      decoration: const InputDecoration(
                                          hintText: "نام کالا را وارد کنید",
                                          border: InputBorder.none,
                                          focusColor: Colors.grey,
                                          fillColor: Colors.red),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                                      color: Colors.red,
                                    ),
                                    child: const Icon(Icons.search, color: Colors.white,),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: (){
                            PopUp(
                              context,
                              color: Colors.white,
                              body: Container(
                                width: 200,
                                height: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(height: 4,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children:  [
                                          InkWell(
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                              child: const Icon(Icons.close_rounded)
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text('ورود یا ثبت‌نام', style: TextStyle(color: Colors.black, fontSize: 16,), textAlign: TextAlign.center,),
                                    const SizedBox(height: 10,),
                                    Column(
                                      children: [
                                        const Text("شماره موبایل", style: TextStyle(fontWeight: FontWeight.bold),),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey),
                                                borderRadius: const BorderRadius.all(Radius.circular(6))
                                            ),
                                            child: TextFormField(
                                              autofocus: true,
                                              enableSuggestions: true,
                                              // autofillHints: ,
                                              onChanged: (value) {},
                                              style: const TextStyle(fontSize: 16),
                                              maxLines: 1,
                                              cursorColor: Colors.red,
                                              decoration: const InputDecoration(
                                                  border: InputBorder.none,
                                                  focusColor: Colors.grey,
                                                  fillColor: Colors.red),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius: BorderRadius.circular(8)
                                              ),
                                              child: const Center(child: const Text("دریافت کد", style: TextStyle(color: Colors.white),)),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ), isDismissible: true,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                                borderRadius: const BorderRadius.all(Radius.circular(2))

                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text("ورود / ثبت نام", style: TextStyle(color: Colors.grey, fontSize: 16)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: const Text("موبایل و تبلت", style: const TextStyle(color: Colors.black54, fontSize: 16))
                        ),
                        const SizedBox(width: 20,),
                        InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: const InkWell(child: const Text("لپتاپ", style: TextStyle(color: Colors.black54, fontSize: 16)))
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0.5,

          ),
        ),
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/medium.png", height: 150,),
                            const SizedBox(width: 30,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const AutoSizeText(
                                  " گوشی سامسونگ A32 | حافظه 128 رم 6 گیگابایت ا Samsung Galaxy A32 128/6 GB",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                                  minFontSize: 16,
                                  maxFontSize: 20,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 10,),
                                const AutoSizeText(
                                  "از ۵۰۰۰۰۰ تا ۱۰۰۰۰۰۰۰",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
                                  minFontSize: 16,
                                  maxFontSize: 20,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap:(){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  Buying()));
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        child: const Center(child: Text("خرید از ارزان‌ترین فروشنده", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),)),
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    Container(
                                      width: 60,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(14)
                                      ),
                                      child: const Center(child: Text("گزارش", style: const TextStyle(fontSize: 12, color: Colors.red),)),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 400,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        shrinkWrap: true,
                        // scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(companyName[index], style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                                              const SizedBox(height: 10,),
                                              const Text("location", style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          const SizedBox(width: 40,),
                                          Column(
                                            children: [
                                              const AutoSizeText(
                                                " گوشی سامسونگ A32 | حافظه 128 رم 6 گیگابایت ا Samsung Galaxy A32 128/6 GB",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                                                minFontSize: 16,
                                                maxFontSize: 20,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const SizedBox(height: 30,),
                                              InkWell(
                                                onTap: (){},
                                                child: Container(
                                                  width: 60,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      color: Colors.red.withOpacity(0.2),
                                                      borderRadius: BorderRadius.circular(14)
                                                  ),
                                                  child: const Center(child: Text("گزارش", style: const TextStyle(fontSize: 12, color: Colors.red),)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 40,),
                                      Column(
                                        children: [
                                          const Text("5000000 تومان", style: TextStyle(color: Colors.red),),
                                          const SizedBox(height: 20,),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(6),
                                              color: Colors.transparent,
                                              border: Border.all(color: Colors.red)
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(2.0),
                                              child: Center(child: const Text("خرید اینترنتی", style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),)),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(),
                            ],
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: MediaQuery.of(context).size.width -( MediaQuery.of(context).size.width / 1.5) - 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AutoSizeText(
                          "مشخصات گوشی سامسونگ A32 | حافظه 128 رم 6 گیگابایت ا Samsung Galaxy A32 128/6 GB",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                          minFontSize: 20,
                          maxFontSize: 20,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 30,),
                        const AutoSizeText(
                          "مشخصات کلی",
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                          minFontSize: 16,
                          maxFontSize: 16,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Divider(),
                        const AutoSizeText(
                          "وزن",
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                          minFontSize: 14,
                          maxFontSize: 14,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        AutoSizeText(
                          "۱۸۴ گرم",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)),
                          minFontSize: 14,
                          maxFontSize: 14,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 30,),
                        const AutoSizeText(
                          "پردازنده‌ی مرکزی",
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                          minFontSize: 14,
                          maxFontSize: 14,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        AutoSizeText(
                          "Dual-Core Cortex-A76 & Hexa-Core Cortex-A55",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)),
                          minFontSize: 14,
                          maxFontSize: 14,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 30,),
                        const AutoSizeText(
                          "اندازه",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                          minFontSize: 14,
                          maxFontSize: 14,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        AutoSizeText(
                          "6.4 اینچ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)),
                          minFontSize: 14,
                          maxFontSize: 14,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 30,),
                        const AutoSizeText(
                          "سیستم عامل",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                          minFontSize: 14,
                          maxFontSize: 14,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        AutoSizeText(
                          "Android",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)),
                          minFontSize: 14,
                          maxFontSize: 14,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 30,),
                      ],
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
