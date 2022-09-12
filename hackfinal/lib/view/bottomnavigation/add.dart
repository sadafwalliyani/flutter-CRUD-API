
import 'package:flutter/material.dart';
import 'package:hackfinal/view/lessons/toolbox.dart';
import 'package:video_player/video_player.dart';


class AddLessons extends StatefulWidget {
  const AddLessons({Key? key}) : super(key: key);

  @override
  _AddLessonsState createState() => _AddLessonsState();
}

class _AddLessonsState extends State<AddLessons> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: const Text(
              "Profile Mentor",
              style: TextStyle(color: Colors.black),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.black,
                ),
                tooltip: 'Comment Icon',
                onPressed: () {},
              ),
              //IconButton
              //IconButton
            ], //<Widget>[]
            backgroundColor: Colors.white,
            //elevation: 50.0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              ),
              tooltip: 'Menu Icon',
              onPressed: () {},
            ),
            //systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
        // appBar: 
        // AppBar(
        //          actions: [
            
        //     IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //      children: [
        //         IconButton(onPressed: () {}, icon: Icon(Icons.share)),
        //         IconButton(onPressed: () {}, icon: Icon(Icons.directions_boat)),
        //       ],
        //     )
        //   ],
        // ),
        body: Column(children: [
          Stack(
            children: [
              _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      });
                    },
                    child: Icon(
                      _controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
        
          Image.asset('assests/image1.PNG'),
          Text('About COurse',
          textAlign: TextAlign.left,),
          SizedBox(height: 10,),
        
          Text('This course is aimed at people new to design, new to User Experience design. Even if you’re not totally sure what UX really means, don’t worry. We’ll start right at the beginning and work our way through step by step.',
          maxLines: 4,
          textAlign: TextAlign.justify,),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

 IconButton(onPressed: () {}, icon: Icon(Icons.add)),
  Text('Add to Cart',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(0, 7, 86, 78),
            ),),


          SizedBox(height: 14,),
          ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ToolBox()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(0, 27, 174, 159),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: Text(
                      "Buy Now \$145",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),

          ],)
        
        ]));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
