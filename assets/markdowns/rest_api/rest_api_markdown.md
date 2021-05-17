    class Album {
        final int userId;
        final int id;
        final String title;

        Album({
            @required this.userId,
            @required this.id,
            @required this.title,
        });

        factory Album.fromJson(Map<String, dynamic> json) {
            return Album(
                userId: json['userId'],
                id: json['id'],
                title: json['title'],
            );
        }
    }

    class _RestApiImplementation extends StatefulWidget {
        @override
        __RestApiImplementationState createState() => __RestApiImplementationState();
    }

    class __RestApiImplementationState extends State<_RestApiImplementation> {
        Future<Album> _futureAlbum;

        void _fetchData() {
            Future<Album> _fetchAlbum() async {
                final response = await http.get(
                    Uri.https(
                    'jsonplaceholder.typicode.com',
                    'albums/1',
                    ),
                );

                if (response.statusCode == 200) {
                    return Album.fromJson(
                    jsonDecode(response.body),
                    );
                } else {
                    throw Exception('Failed to load album');
                }
            }

            setState(() {
                _futureAlbum = _fetchAlbum();
            });
        }

        @override
        Widget build(BuildContext context) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                        color: Colors.amber,
                        padding: const EdgeInsets.all(8),
                        child: FutureBuilder<Album>(
                            future: _futureAlbum,
                            builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                    return Text(snapshot.data.title);
                                } else if (snapshot.hasError) {
                                    return Text("${snapshot.error}");
                                }

                                return Container(
                                    constraints: BoxConstraints(minHeight: 24),
                                );
                            },
                        ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                            top: 16,
                        ),
                        child: ElevatedButton(
                            onPressed: _fetchData,
                            child: const Text('Fetch data'),
                        ),
                    ),
                ],
            );
        }
    }
