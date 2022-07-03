import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:torob_flutter/views/popup.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:torob_flutter/views/product.dart';


class Search extends StatefulWidget {
  final categoryTitle;
  const Search({this.categoryTitle});
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List sorts = ['ارزان‌ترین', 'گران‌ترین', 'جدیدترین'];
  bool show = false;
  bool showPrice = false;
  var startPrice = 0;
  var finishPrice = 51800000;

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
            Container(
              width: 300,
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          show = !show;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("انتخاب برند", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          Icon(Icons.chevron_right_sharp)
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: show,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const[
                          Text("سامسونگ", style: TextStyle(fontSize: 14),),
                          SizedBox(height: 10,),
                          Divider(),
                          SizedBox(height: 10,),
                          Text("اپل", style: TextStyle(fontSize: 14)),
                          SizedBox(height: 10,),
                          Divider(),
                          SizedBox(height: 10,),
                          Text("شیائومی", style: TextStyle(fontSize: 14))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          showPrice = !showPrice;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("قیمت", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          Icon(Icons.chevron_right_sharp)
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: showPrice,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 110,
                                  height: 30,
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
                                    decoration: InputDecoration(
                                        hintText: "از                     ${startPrice}",
                                        border: InputBorder.none,
                                        focusColor: Colors.grey,
                                        fillColor: Colors.red),
                                  ),
                                ),
                                Container(
                                  width: 110,
                                  height: 30,
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
                                    decoration: InputDecoration(
                                        hintText: "تا    ${finishPrice}",
                                        border: InputBorder.none,
                                        focusColor: Colors.grey,
                                        fillColor: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.grey.withOpacity(0.2)
                                    ),
                                    child: Center(child: Text("اعمال فیلتر قیمت", style: TextStyle(color: Colors.black54),)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30,),
            Container(
              width: MediaQuery.of(context).size.width - 330,
              child: Column(
                children: [
                  //dropdown
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        SizedBox(width: 50,),
                        Icon(Icons.keyboard_arrow_down_sharp),
                        Text("ارزان‌ترین", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        SizedBox(width: 50,),
                      ],
                    ),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 20,),
                      Text('قیمت انواع ${widget.categoryTitle}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    width: MediaQuery.of(context).size.width - 330,
                    height: MediaQuery.of(context).size.height - 263,
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      shrinkWrap: true,
                      // scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Product()));
                              },
                              child: SizedBox(
                                height: 250,
                                width: 180,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 100,
                                            decoration: BoxDecoration(color: const Color(0xFF36335f), borderRadius: BorderRadius.circular(18)),
                                            height: 100,
                                            child: Image.asset("assets/images/medium.png"),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const AutoSizeText(
                                            "گوشی موبایل سامسونگ",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                                            minFontSize: 12,
                                            maxFontSize: 16,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const AutoSizeText(
                                            "گوشی موبایل سامسونگ گلکسی آ 32 (128 گیگا بایت،‌رم 6گیگا بایت) | Samsung Galaxy A32 mobile phone (128GB,6GB RAM) - زمان ارسال بیست و پنج روز کاری",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 12, color: Colors.black),
                                            minFontSize: 12,
                                            maxFontSize: 16,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children:[
                                                Icon(Icons.heart_broken, color: Colors.grey.withOpacity(0.5),),
                                                Icon(Icons.notifications, color: Colors.grey.withOpacity(0.5),),
                                              ],
                                            ),
                                          )
                                        ]
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Product()));
                              },
                              child: SizedBox(
                                height: 250,
                                width: 180,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 100,
                                            decoration: BoxDecoration(color: const Color(0xFF36335f), borderRadius: BorderRadius.circular(18)),
                                            height: 100,
                                            child: Image.asset("assets/images/medium.png"),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const AutoSizeText(
                                            "گوشی موبایل",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                                            minFontSize: 12,
                                            maxFontSize: 16,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const AutoSizeText(
                                            "گوشی موبایل گلکسی آ 32 (128 گیگا بایت،‌رم 6گیگا بایت) | Samsung Galaxy A32 mobile phone (128GB,6GB RAM) - زمان ارسال بیست و پنج روز کاری",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 12, color: Colors.black),
                                            minFontSize: 12,
                                            maxFontSize: 16,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children:[
                                                Icon(Icons.heart_broken, color: Colors.grey.withOpacity(0.5),),
                                                Icon(Icons.notifications, color: Colors.grey.withOpacity(0.5),),
                                              ],
                                            ),
                                          )
                                        ]
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 250,
                              width: 180,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 100,
                                          decoration: BoxDecoration(color: const Color(0xFF36335f), borderRadius: BorderRadius.circular(18)),
                                          height: 100,
                                          child: Image.asset("assets/images/medium.png"),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const AutoSizeText(
                                          "گوشی موبایل شیائومی",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                                          minFontSize: 12,
                                          maxFontSize: 16,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const AutoSizeText(
                                          "گوشی موبایل شیائومی آ 32 (128 گیگا بایت،‌رم 6گیگا بایت) | Samsung Galaxy A32 mobile phone (128GB,6GB RAM) - زمان ارسال بیست و پنج روز کاری",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 12, color: Colors.black),
                                          minFontSize: 12,
                                          maxFontSize: 16,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Icon(Icons.heart_broken, color: Colors.grey.withOpacity(0.5),),
                                              Icon(Icons.notifications, color: Colors.grey.withOpacity(0.5),),
                                            ],
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 250,
                              width: 180,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 100,
                                          decoration: BoxDecoration(color: const Color(0xFF36335f), borderRadius: BorderRadius.circular(18)),
                                          height: 100,
                                          child: Image.asset("assets/images/medium.png"),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const AutoSizeText(
                                          "گوشی",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                                          minFontSize: 12,
                                          maxFontSize: 16,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const AutoSizeText(
                                          "گوشی  32 (128 گیگا بایت،‌رم 6گیگا بایت) | Samsung Galaxy A32 mobile phone (128GB,6GB RAM) - زمان ارسال بیست و پنج روز کاری",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 12, color: Colors.black),
                                          minFontSize: 12,
                                          maxFontSize: 16,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Icon(Icons.heart_broken, color: Colors.grey.withOpacity(0.5),),
                                              Icon(Icons.notifications, color: Colors.grey.withOpacity(0.5),),
                                            ],
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 250,
                              width: 180,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 100,
                                          decoration: BoxDecoration(color: const Color(0xFF36335f), borderRadius: BorderRadius.circular(18)),
                                          height: 100,
                                          child: Image.asset("assets/images/medium.png"),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const AutoSizeText(
                                          "گوشی لنوو",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                                          minFontSize: 12,
                                          maxFontSize: 16,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const AutoSizeText(
                                          "گوشی لنوو 32 (128 گیگا بایت،‌رم 6گیگا بایت) | Samsung Galaxy A32 mobile phone (128GB,6GB RAM) - زمان ارسال بیست و پنج روز کاری",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 12, color: Colors.black),
                                          minFontSize: 12,
                                          maxFontSize: 16,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Icon(Icons.heart_broken, color: Colors.grey.withOpacity(0.5),),
                                              Icon(Icons.notifications, color: Colors.grey.withOpacity(0.5),),
                                            ],
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 250,
                              width: 180,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 100,
                                          decoration: BoxDecoration(color: const Color(0xFF36335f), borderRadius: BorderRadius.circular(18)),
                                          height: 100,
                                          child: Image.asset("assets/images/medium.png"),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const AutoSizeText(
                                          "گوشی اپل",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                                          minFontSize: 12,
                                          maxFontSize: 16,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const AutoSizeText(
                                          "گوشی اپل 32 (128 گیگا بایت،‌رم 6گیگا بایت) | Samsung Galaxy A32 mobile phone (128GB,6GB RAM) - زمان ارسال بیست و پنج روز کاری",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 12, color: Colors.black),
                                          minFontSize: 12,
                                          maxFontSize: 16,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Icon(Icons.heart_broken, color: Colors.grey.withOpacity(0.5),),
                                              Icon(Icons.notifications, color: Colors.grey.withOpacity(0.5),),
                                            ],
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
