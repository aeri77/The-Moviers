import 'package:flutter/material.dart';

/// @author Aeri created on 3/24/2021

class ContentGridWidget extends StatefulWidget {
  @override
  _ContentGridWidgetState createState() => _ContentGridWidgetState();
}

class _ContentGridWidgetState extends State<ContentGridWidget> {

  List<MenuList> _menuList = [];

  @override
  void initState() {
    super.initState();
    _menuList.add(MenuList("hello", "https://www.jquery-az.com/wp-content/uploads/2018/07/7.0_3-Git-remote-add-local.png"));
    _menuList.add(MenuList("Hai", "https://www.jquery-az.com/wp-content/uploads/2018/07/7.0_3-Git-remote-add-local.png"));
    _menuList.add(MenuList("Pagi", "https://www.jquery-az.com/wp-content/uploads/2018/07/7.0_3-Git-remote-add-local.png"));
    _menuList.add(MenuList("Pagi", "https://www.jquery-az.com/wp-content/uploads/2018/07/7.0_3-Git-remote-add-local.png"));
    _menuList.add(MenuList("Pagi", "https://www.jquery-az.com/wp-content/uploads/2018/07/7.0_3-Git-remote-add-local.png"));
    _menuList.add(MenuList("Pagi", "https://www.jquery-az.com/wp-content/uploads/2018/07/7.0_3-Git-remote-add-local.png"));
    _menuList.add(MenuList("Pagi", "https://www.jquery-az.com/wp-content/uploads/2018/07/7.0_3-Git-remote-add-local.png"));
    _menuList.add(MenuList("Pagi", "https://www.jquery-az.com/wp-content/uploads/2018/07/7.0_3-Git-remote-add-local.png"));
    _menuList.add(MenuList("Pagi", "https://www.jquery-az.com/wp-content/uploads/2018/07/7.0_3-Git-remote-add-local.png"));
  }

  
  
  @override
  Widget build(BuildContext context) {

    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: GridView.count(
                      // Create a grid with 2 columns. If you change the scrollDirection to
                      // horizontal, this produces 2 rows.
                      crossAxisCount: 2,
                      childAspectRatio: 4 / 4,
                      primary: false,
                      // Generate 100 src.widgets that display their index in the List.
                      children: List.generate(_menuList.length, (int index) {
                        return InkWell(
                            onTap: () {

                            },
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Card(
                                        semanticContainer: true,
                                        clipBehavior:
                                        Clip.antiAliasWithSaveLayer,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(
                                              6.0),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(_menuList[index].image),
                                              fit: BoxFit.fill,
                                              alignment:
                                              Alignment.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Flexible(
                                          child: Container(
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: <Widget>[
                                                  Text(_menuList[index].name,
                                                      overflow:
                                                      TextOverflow
                                                          .ellipsis,
                                                      style: TextStyle(
                                                          fontSize:
                                                          12)),
                                                  Text(
                                                   _menuList[index].name,
                                                    overflow:
                                                    TextOverflow
                                                        .ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 8),
                                                  )
                                                ]),
                                          ),
                                        ),
                                        Flexible(
                                            child: Text(_menuList[index].name,
                                              textAlign: TextAlign.end,
                                              style:
                                              TextStyle(fontSize: 12),
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ));
                      }),
                    )),
              )
            ],
          ),
        );

  }
}

class MenuList {
  String name;
  String image;
  MenuList(this.name, this.image);
}