import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp',style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.teal,
            bottom: TabBar(
                tabs: [
                  Tab(child: Icon(Icons.camera_alt, color: Colors.white),),
                  Tab(child: Text('Chats',style: TextStyle(color: Colors.white),)),
                  Tab(child: Text('Status',style: TextStyle(color: Colors.white),)),
                  Tab(child: Text('Calls',style: TextStyle(color: Colors.white),),),
                ]
            ),
            actions: [
              Icon(Icons.search , color: Colors.white,),
              SizedBox(width: 10,),
              PopupMenuButton(
                   icon: Icon(Icons.more_horiz_outlined, color: Colors.white,),
                  itemBuilder: (context) => const [
                    PopupMenuItem(
                      value: '1',
                        child: Text('New Group')),
                    PopupMenuItem(
                        value: '2',
                        child: Text('Settings')),
                    PopupMenuItem(
                        value: '3',
                        child: Text('Logout'))

                  ]
              ),
              SizedBox(width: 20,),
            ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 20,
                  itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text("Syed M Saqib"),
                    subtitle: Text('where to have dinner ?'),
                    trailing: Text('11:00 pm'),
                  );
                  }
              ),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green , width: 3),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: Text("Syed M Saqib"),
                      subtitle: Text('5 min ago'),

                    );
                  }
              ),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      // we have multiple choises depends upon us.
                      // title: Text("Syed M Saqib"),
                      // subtitle: Align(
                      //   alignment: Alignment.topLeft,
                      //   child: Icon(Icons.phone),),
                      // trailing: Text('11:00 pm'),
                      title: Text('Syed M Saqib'),
                      subtitle: Text('you missed call'),
                      trailing: Icon(index /2 == 0 ? Icons.phone : Icons.video_call),
                    );
                  }
              ),
            ],
          ),
        )
    );
  }
}

