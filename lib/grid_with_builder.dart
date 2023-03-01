import 'package:flutter/material.dart';

class GridWithBuilder extends StatelessWidget{
  var img=<String>["https://images.unsplash.com/photo-1564594736624-def7a10ab047?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80",
  "https://images.unsplash.com/photo-1549144511-f099e773c147?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFyaXMlMjBmcmFuY2V8ZW58MHx8MHx8&w=1000&q=80",
  "https://images.unsplash.com/photo-1502113130129-259236d6fabd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dG9yaW5vfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://images.unsplash.com/photo-1610651219730-6b580d616e72?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dG9yaW5vfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://media.istockphoto.com/id/902113346/photo/main-view-of-san-carlo-square-and-twin-churches-turin.jpg?b=1&s=170667a&w=0&k=20&c=9D76SNo67uyna75MpL0NNmcoXZ6SC8U_7pmBLXNjhBw=",
  "https://images.unsplash.com/photo-1564507592333-c60657eea523?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGFqJTIwbWFoYWx8ZW58MHx8MHx8&w=1000&q=80",
  "https://images.unsplash.com/photo-1584283092096-4a48b7d822a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cXV0dWIlMjBtaW5hcnxlbnwwfHwwfHw%3D&w=1000&q=80",
  "https://images.unsplash.com/photo-1602216056096-3b40cc0c9944?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8a2VyYWxhfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://media.istockphoto.com/id/1294454411/photo/london-symbols-with-big-ben-double-decker-buses-and-red-phone-booth-in-england-uk.jpg?b=1&s=170667a&w=0&k=20&c=SR5FBt8VvpZEOIxZcTmoEf9XxU0oiSnbobD3E6ZB358=",
  "https://images.unsplash.com/photo-1523482580672-f109ba8cb9be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXVzdHJhbGlhfGVufDB8fDB8fA%3D%3D&w=1000&q=80"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid View 1"),),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20),
       itemCount: 10,
       itemBuilder: (context,index){
        return Image(image: NetworkImage(img[index]));
       }),
    );
  }

}