import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:map_search/constants/constants.dart';
import 'package:http/http.dart' as http;
import 'package:map_search/constants/highlight.dart';
import 'package:map_search/constants/map_utils.dart';
import 'package:map_search/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  List<dynamic> list = [];
  Timer? _debounce;
  _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(seconds: 1), () {
      const CircularProgressIndicator();
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    searchController.addListener(() {
      getSuggest(searchController.text);
    });
  }

  void getSuggest(String input) async {
    final String request =
        '${BaseURL().AUTO_COMPLETE}?q=$input&apiKey=${API().API_KEY}';
    print(request);
    var response = await http.get(Uri.parse(request));
    print(response.body.toString());
    if (response.statusCode == 200) {
      setState(() {
        list = jsonDecode(response.body.toString())['items'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 26, 174, 112),
                title: const Text(
                  'Search Map',
                  style: TextStyle(color: Colors.white),
                )),
            body: Column(
              children: [
                TextField(
                  controller: searchController,
                  onChanged: _onSearchChanged,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xfff1f1f1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search for Items",
                    prefixIcon: list.isEmpty
                        ? CircularProgressIndicator()
                        : Icon(Icons.search),
                    prefixIconColor: Colors.black,
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        List<Location> location =
                            await locationFromAddress(list[index]["title"]);
                        Position position =
                            await Geolocator.getCurrentPosition();
                        MapUltis.openMap(position.latitude, position.longitude,
                            location.first.latitude, location.first.longitude);
                      },
                      title: Text.rich(TextSpan(
                          children: highlightOccurrences(
                              list[index]['title'], searchController.text))),
                    );
                  },
                ))
              ],
            )));
  }
}
