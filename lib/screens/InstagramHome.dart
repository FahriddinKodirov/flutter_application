import 'dart:ffi';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/Utils/post_title_widget.dart';
import 'package:flutter_application_1/screens/Post_comment.dart';
import 'package:flutter_application_1/screens/post_comment.dart';
import 'package:flutter_application_1/screens/post_model.dart';
import 'package:flutter_application_1/screens2/all/Story_page.dart';
import 'package:flutter_application_1/screens2/all/comments.page.dart';
import 'package:flutter_application_1/screens2/all/post_comment.dart';


class instagram2 extends StatefulWidget {
  const instagram2({super.key});

  @override
  State<instagram2> createState() => _instagram2State();
}


class _instagram2State extends State<instagram2> {
  @override

  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Image.asset(MyImages.Image_instagram1, width: 104,),
      backgroundColor: Colors.white, 
      elevation: 0,
      actions: [
        Padding(padding: EdgeInsets.only(right: 10),
        child: Image.asset(MyImages.Image_plus2,width: 25,),),
        SizedBox(width: 10,),
        Padding(padding: EdgeInsets.only(right: 10),
        child: Image.asset(MyImages.Image_love, width: 25)),
        SizedBox(width: 10,),
        Padding(padding: EdgeInsets.only(right: 10),
        child: Image.asset(MyImages.Image_sms2, width: 25, )),
      
      ]),
       body: SingleChildScrollView(physics: BouncingScrollPhysics(),
       child: Column(children: [
          AllStatus(),
          SizedBox(height: 2,),
          Divider(thickness: 0.4,color: Colors.grey,),
          posts(),
          
        ],  
    ))
      
    );
  }

Widget status(PostModel post){
  return Column(children: [
    SizedBox(height: 5,),
     InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MoreStories()));
                  },child:
    Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
              
              boxShadow:[BoxShadow(
              color: Colors.red,
              spreadRadius: 3.5

              ),] ,

              shape: BoxShape.circle
              ),
              child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
              
              boxShadow:[BoxShadow(
              color: Colors.white,
              spreadRadius: 1.5

              ),] ,

              shape: BoxShape.circle
              ),
                
                child: 
              Container(
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              
              image: DecorationImage(
              image: NetworkImage(post.userLogo,), fit: BoxFit.fill,)
          ),
              ))
                  ),
                 
    ),
   SizedBox(height: 10,),
    Container(
              
              child: Text(post.userName),
                  ),
  ],
    
  );
}

Widget AllStatus(){
  return Container(
        
         height: MediaQuery.of(context).size.height * 0.14,
         child: ListView.separated(
          padding: EdgeInsets.only(left: 10),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return status(PostModel.posts[index]);
          },
          separatorBuilder: (BuildContext Context, int index){
          return SizedBox(width: 20);
         },
          
          ));

            
            
            
            
            
            
            
}

Widget posts() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          constraints: BoxConstraints(minHeight: 160),
          child: postItem(PostModel.posts[index]),
        );
      },
      itemCount: PostModel.posts.length,
    );
  }

Widget postItem(PostModel post){
  return Column(children: [
    Container(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            
          Container(
          
          height: 40,
          width: 40,
           
          decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
          image: NetworkImage(post.userLogo), fit: BoxFit.cover)
          ),
          
          ),
          Container(
            padding: EdgeInsets.only(left: 15), 
            child: Text(post.userName, style: Mystyle.BentonSansBold700.copyWith(fontSize: 17)))
          ],),
          Container(
            padding: EdgeInsets.only(right: 12),
             child: Image.asset(MyImages.Image_tochka2,width: 25,),)
          
        ],
      ),
    ),
    SizedBox(height: 8,),
    Container(
                child: ExpandablePageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                    post.imageIndicator = index;
                    });
                  },
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index){
                  return postImage(post.images[index]);
                }
                )),
     SizedBox(height: 8,),
    postAction(post),
    SizedBox(height: 8,),
    Padding(
            padding: EdgeInsets.only(right: 314),
            child: Text(
              "${post.likeCount} likes",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            )),
            SizedBox(height: 8,),
     
      PostTitle(post: post, moreTap: () {
              setState(() {
                post.isTitleExpanded = !post.isTitleExpanded;
              });
            }),
   postCommentsAndAddComment(post)
  ]);
  
  
}
String newComment = "";
var controller = TextEditingController();

 Widget postImage(String imgUrl) {
    return CachedNetworkImage(
      fit: BoxFit.fitWidth,
      imageUrl: imgUrl,
      placeholder: (context, url) => SizedBox(
        width: double.infinity,
        height: 400,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      errorWidget: (context, url, error) => SizedBox(
        width: double.infinity,
        height: 400,
        child: Center(
          child: Icon(
            Icons.error,
            size: 120,
          ),
        ),
      ),
    );
  }


Widget postAction(PostModel post){
  return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: InkWell(onTap: () {
                    setState(() {
                       post.isLiked = !post.isLiked;
                       post.isLiked? post.likeCount += 1:
                       post.likeCount -= 1;
                    });
                   },child:  !post.isLiked
                    ? Icon(Icons.favorite_border_outlined, size: 28,)
                    : Icon(
                        Icons.favorite_outlined,
                        color: Colors.red,size: 28,
                      )),
                  
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CommentsPage(post: post),
                      ),
                    );
                  },
                  child:Container(
                  padding: EdgeInsets.only(left: 15),
                  child:  Image.asset(MyImages.Image_sms1, width: 25)
                )),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Image.asset(MyImages.Image_telegram, width: 25,)
                ),
              ],),
               indicator(post.imageIndicator),
               SizedBox(width: 1,),
               Container(
                padding: EdgeInsets.only(right: 10),
                child: InkWell(onTap: () {
                    setState(() {
                       post.isBookMarked = !post.isBookMarked;
                    });
                   },child:  !post.isBookMarked
                    ? Icon(Icons.bookmark_border_sharp, size: 28,)
                    : Icon(
                        Icons.bookmark_outlined,
                        color: Colors.black,size: 28,
                      )),
               )
             ], );
}
Widget CommentRead(PostModel post){
  return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 17),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: '${post.userName} ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
            
            TextSpan(text: post.title,style: TextStyle(color: Colors.black))
          
          ]
        )),

  );
}

Widget postTitle({required PostModel post}) {
    return Padding(
      padding: EdgeInsets.only(left: 12),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "${post.userName}  ",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
            TextSpan(
              text: post.title.substring(
                0,
                !post.isTitleExpanded
                    ? (post.title.length > 90 ? 90 : post.title.length)
                    : post.title.length,
              ),
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: !post.isTitleExpanded
                  ? (post.title.length > 90 ? "... more" : "")
                  : "\nshow less",
              style: TextStyle(color: Colors.grey),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  setState(() {
                    post.isTitleExpanded = !post.isTitleExpanded;
                  });
                },
            )
          ],
        ),
      ),
    );
  }
Widget postCommentsAndAddComment(PostModel post) {
    return Padding(
      padding: EdgeInsets.only(left: 12, top: 4),
      child: Column(
        children: [
          const SizedBox(height: 4),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            primary: false,
            shrinkWrap: true,
            itemCount: post.comments.length,
            itemBuilder: (BuildContext context, int index) {
              return PostCommentWidget(comment: post.comments[index]);
            },
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage("${PostModel.baseUrl}${40}.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  controller: controller,
                  onChanged: (value) {
                    setState(() {
                      newComment = value;
                    });
                  },
                  onTap: () {},
                  decoration: InputDecoration(
                    hintText: 'Add comment...',
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextButton(
                style: ButtonStyle(),
                onPressed: newComment.isNotEmpty
                    ? () {
                        setState(() {});
                      }
                    : null,
                child: Text(
                  "Post",
                  style: TextStyle(
                    color: newComment.isNotEmpty
                        ? Colors.blue
                        : Colors.blue.withOpacity(0.5),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

Widget CommentWhrite(){
  return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                  // padding: EdgeInsets.only(right: 220),
                  child: Text('Add comment...',style: TextStyle(color: Colors.black38),)),
              Container(
                  // padding: EdgeInsets.only(right: 220),
                  child: Text('😭😍      +',)),
            
             ],
              
             );
}

Widget indicator(count){
  return Container(
    width: 60,
    height: 25,
    child: ListView.separated(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    scrollDirection: Axis.horizontal,
    itemCount: 4,
    itemBuilder: (BuildContext contrxt, int index){
      return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
      shape: BoxShape.circle,
       color: count == index? Color(0xFF32B5FF):Color(0xFFC4C4C4),
      ));
      },
      separatorBuilder: (BuildContext Context, int index){
        return SizedBox(width: 4);
      },
          
          
          ),
  );
  
}



}