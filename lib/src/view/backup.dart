            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey.withOpacity(0.5), //color of shadow
            //           spreadRadius: 5, //spread radius
            //           blurRadius: 7, // blur radius
            //           offset: const Offset(0, 2), // changes position of shadow
            //           //first paramerter of offset is left-right
            //           //second parameter is top to down
            //         ),
            //       ],
            //       gradient: const LinearGradient(
            //           begin: Alignment.topLeft,
            //           end: Alignment.bottomRight,
            //           colors: [
            //             Color(0xFF0075FF),
            //             Color(0xFF035671),
            //           ]),
            //       borderRadius: const BorderRadius.only(
            //         bottomLeft: Radius.circular(60),
            //         bottomRight: Radius.circular(60),
            //       ),
            //     ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         IconButton(
            //           padding: EdgeInsets.only(left: 10),
            //           icon: const Icon(Icons.arrow_left),
            //           iconSize: 30,
            //           onPressed: () {
            //             Navigator.pop(context);
            //           },
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 40),
            //           child: Icon(Icons.person),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 10),
            //           child: Text("Nama Cikgu"),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            // HorizontalCardPager(
            //       initialPage : 2, // default value is 2
            //       onPageChanged: (page) => print("page : $page"),
            //       onSelectedItem: (page) {
            //         setState(() {
            //           currentImage = page;
            //         });
            //         print("selected : $page");
            //       },
            //       items: items,  // set ImageCardItem or IconTitleCardItem class
            //   ),
                              // Positioned(
                  //   left: 20,
                  //   child: IconButton(
                  //     color: Colors.grey,
                  //     icon: Icon(Icons.arrow_back_rounded),
                  //     onPressed: (){ previousNumber();},
                  //   ),
                  // ),
                  // Positioned(
                  //   right: 20,
                  //   child: IconButton(
                  //     color: Colors.grey,
                  //     icon: Icon(Icons.arrow_right_rounded),
                  //     onPressed: (){nextNumber();},
                  //   ),
                  // ),
/*
                  Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 400,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.blueGrey,
                    ),
                    //current image
                    Opacity(
                      opacity: currentSkinOpacity,
                      child: Image.asset(
                        cardlistpng[currentImageIndex].imageLink,
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ),
                    ),
                    //next image
                    Opacity(
                      opacity: currentSkinOpacity,
                      child: Image.asset(
                        cardlistpng[nextImageIndex].imageLink,
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: HorizontalCardPager(
                  initialPage : 0, // default value is 2
                  onPageChanged: (page) {
                    setState(() {
                        if ((page - currentImageIndex.toDouble()).abs() >= 1) {
                          currentImageIndex = nextImageIndex;
                          currentSkinOpacity = 1.0;
                          nextSkinOpacity = 0;
                        } else if (page > currentImageIndex) {
                          nextImageIndex = currentImageIndex + 1;
                          nextSkinOpacity = page - currentImageIndex.toDouble();
                          currentSkinOpacity = 1 - nextSkinOpacity;
                        } else if (page < currentImageIndex) {
                          nextImageIndex = currentImageIndex - 1;
                          nextSkinOpacity = currentImageIndex.toDouble() - page;
                          currentSkinOpacity = 1.0 - nextSkinOpacity;
                        }

                        print(currentSkinOpacity.toString() +
                            "/" +
                            nextSkinOpacity.toString());
                      });
                    print("page : $page");
                  },
                  onSelectedItem: (page) {
                    
                    print("selected : $page");
                  },
                  items: items,  // set ImageCardItem or IconTitleCardItem class
                ),
              )
            ],
          ),
        )
        */
        /*
          Container(
            height: 400,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: const Offset(0, 2), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.indigo.shade400,
                    Colors.indigo.shade900,
                  ]),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5, bottom: 30),
                  child: Text(
                    introduction,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
        * 
        * 
        *        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
          Colors.indigo.shade400,
          Colors.indigo.shade900,
          Colors.indigo.shade400,
          Colors.indigo.shade100,
          ]),*/