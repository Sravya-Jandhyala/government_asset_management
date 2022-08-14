import 'package:flutter/material.dart';

class instituteDetails extends StatefulWidget {
  const instituteDetails({Key? key}) : super(key: key);
  @override
  State<instituteDetails> createState() => _instituteDetailsState();
}

class _instituteDetailsState extends State<instituteDetails> {
  @override
  final List<String> names = <String>['VR Siddhartha','KLU','SRM AP'];
  final List<int> ids=<int>[101,102,103];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 9, 82),
        appBar: AppBar(
          title: Text('All Institution Details'),
          backgroundColor: Color.fromARGB(255, 2, 9, 82),
        ),
        //body:
        body: Column(
            children: <Widget>[
              ListTile(
                onTap: null,
                leading: Expanded(child: Text("First Name",style:TextStyle(color:Colors.white),)),
                title: Expanded(child: Text("Last Name",style:TextStyle(color:Colors.white),)),
              ),

              Expanded(child:Container(
                child: ListView.separated(
                  padding:const EdgeInsets.all(8),
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) {


                      return ListTile(                //return new ListTile(
                          tileColor: Colors.white,
                          title: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15), //apply padding to all four sides
                                  child: Text('${ids[index]}'),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15), //apply padding to all four sides
                                  child: Text('${names[index]}'),
                                ),
                              ]
                          ),
                        trailing: IconButton(
                          icon: const Icon(Icons.forward),
                          color: Color.fromARGB(255, 2, 9, 82),
                          tooltip: 'View Details',
                          onPressed: () {},
                        ),
                      );
                  }, //itemBuilder
                  separatorBuilder: (BuildContext context,int index)=>const Divider(),
                ),
              ),
              ),
            ]
        )
    );
    /**return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 9, 82),
      appBar: AppBar(
        title: const Text('All Institution Details'),
        backgroundColor: Color.fromARGB(255, 2, 9, 82),
      ),
      body: SafeArea
        (

            child: ListView.separated(
            padding:const EdgeInsets.all(8),
            itemCount: names.length,
            itemBuilder:(BuildContext context,int index){
              return ListTile(
                tileColor: Colors.white,
                leading:  Padding(
                  padding: EdgeInsets.all(15), //apply padding to all four sides
                  child: Text('${ids[index]}'),
                ),
                title:   Padding(
                  padding: EdgeInsets.all(15), //apply padding to all four sides
                  child: Text('${names[index]}'),
                ),

                trailing: IconButton(
                  icon: const Icon(Icons.forward),
                  color: Color.fromARGB(255, 2, 9, 82),
                  tooltip: 'View Details',
                  onPressed: () {},
                ),
              );
              /**return Container(

                height: 50,
                color: Colors.white,
                child:Row(

                  children: <Widget>[

                    Padding(
                      padding: EdgeInsets.all(15), //apply padding to all four sides
                      child: Text('${ids[index]}'),
                    ),

                    Padding(
                      padding: EdgeInsets.all(15), //apply padding to all four sides
                      child: Text('${names[index]}'),
                    ),

                    Column(
                      mainAxisAlignment : MainAxisAlignment.start,
                      crossAxisAlignment : CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.close,

                          ),
                        )
                      ],
                    ),
                    /**
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon( // <-- Icon
                          Icons.download,
                          size: 24.0,
                        ),
                        label: Text('Download'), // <-- Text
                      ),
                    ),
                    **/



                  ],
                ),

              );**/
            },
          separatorBuilder: (BuildContext context,int index)=>const Divider(),
        )
      ),
    );
    **/
  }
}
