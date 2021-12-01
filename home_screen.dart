import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class Recommendation extends StatefulWidget {
  const Recommendation({Key? key}) : super(key: key);
  @override
  State<Recommendation> createState() => _RecommendationState();
}

class Shape extends StatefulWidget {
  const Shape({Key? key}) : super(key: key);
  @override
  State<Shape> createState() => _ShapeState();
}

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);
  @override
  State<Question> createState() => _QuestionState();
}

class Submit extends StatefulWidget {
  const Submit({Key? key}) : super(key: key);
  @override
  State<Submit> createState() => _SubmitState();
}

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);
  @override
  State<Chat> createState() => _ChatState();
}


enum ChoiceShape {diamond,heart,oblong,oval,round,square,triangle,cool,warm}
enum ChoiceSkin{cool,warm}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Virtual try-on"), backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/VTO.png'),
            const SizedBox(height: 20),
            const Text('WELCOME TO VIRTUAL TRY ON SUNGLASSES',
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold
                ) ),
            const SizedBox(height: 50),
            TextButton(
              child: const Text('Recommendation'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blueAccent,
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic
                )
              ),
              onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Recommendation()),
                );
              },
    ),
            const SizedBox(height: 50),
            TextButton(
              child: const Text('Try-On Sunglasses'),
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  textStyle: const TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic
                  )
              ),
                onPressed: ()
                {

                },
            ),
            const SizedBox(height: 50),
            TextButton(
              child: const Text('Chat-Bot (Q&A)'),
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  textStyle: const TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic
                  )
              ),
                  onPressed: ()
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Chat()),);
                },
            )
          ]
    ),
    ),
    );
  }
}

class _RecommendationState extends State<Recommendation> {


  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Recommendation"), backgroundColor: Colors.teal,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),);
          },
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
        body: Center(
           child: Scrollbar(
              thickness: 10,
              child: SingleChildScrollView(
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                  Image.asset('assets/images/VTO.png'),
                   const SizedBox(height: 40),

                  TextButton(
                     child: const Text('Guide: HOW TO DETERMINE YOUR FACE SHAPE'),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.blueAccent,
                          textStyle: const TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic
                    )
                    ),
                    onPressed: ()
                    {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Shape()),);
                },
          ),
                    const SizedBox(height: 30),
                    const Text('   Do answer the following question by clicking the\n  button below and we will recommend you suitable\n                                 sunglasses ~!',
                        style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold
                        ) ),
                    const SizedBox(height: 20),

                    TextButton(
                      child: const Text('QUESTION AND ANSWER'),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.blueAccent,
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic
                          )
                      ),
                      onPressed: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Question()),);
                      },
                    ),
                  ],
          ),
        ),
    ),
        ),
    );
  }
}

class _ShapeState extends State<Shape> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text("Guide"), backgroundColor: Colors.teal,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
                Navigator.push(context,
           MaterialPageRoute(builder: (context) => const Recommendation()),);
         },
       ),
      ),
        body: Center(
          child: Scrollbar(
            thickness: 10,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                Text('\nHOW TO MEASURE YOUR FACE',
                style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold
                ) ),
                SizedBox(height: 50),
                Text('STEP 1: THE RIGHT TOOLS',
                  style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                  ) ),
                SizedBox(height: 18),
                  Text('Do grab a flexible tape measure like the kind used by a tailor.',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                  Text('STEP 2: MEASURE YOUR FOREHEAD',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  SizedBox(height: 18),
                  Text("  In order to work out which face shape you have, you need to \n  find out which parts are long, which ones are short,\n  or whether they’re actually all the same.The forehead is a \n  good place to start, so measure across the widest part this is \n  usually around halfway between your eyebrows and your \n  hairline.",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                  Text('STEP 3: MEASURE YOUR CHEEKBONES',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  SizedBox(height: 18),
                  Text("  Size yours up by placing the tape across the pointiest part, \n  just below the outer corner of each eye.",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                  Text('STEP 4: MEASURE YOUR JAWLINE',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  SizedBox(height: 18),
                  Text("  Measure from the tip of your chin to below your ear at the \n  point at which your jaw angles upwards. Of course, you have \n  a jaw on both sides of your face,so multiply that number by \n  two to get your jawline length.",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                  Text('STEP 5: MEASURE YOUR FACE LENGTH',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  SizedBox(height: 18),
                  Text("  run the tape measure from the centre of your hairline to the\n  tip of your chin. For follicularly challenged men with either\n  shaved or bald heads, estimate the point where your\n  hairline would be.",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                  Text('DETERMINING YOUR FACE SHAPE \n                  BY THE RESULT',
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  SizedBox(height: 18),

                  Text('OVAL FACE SHAPE',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  
                  
                  SizedBox(height: 18),
                  Text("  If your face length is greater than the width of the cheekbones,\n  and your forehead length is greater than the jawline, you have\n  an oval face shape.The angle of the jaw is rounded\n  rather than sharp.",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                  Text('SQUARE FACE SHAPE',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  SizedBox(height: 18),
                  Text("  When all the measurements are fairly similar, you have a\n  square face shape. The angle of the jaw is sharp rather than\n  rounded.This is often considered the masculine ideal,\n  so congrats on your genetic lottery card!",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                  Text('ROUND FACE SHAPE',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  SizedBox(height: 18),
                  Text("  With an oblong face shape (also referred to as a rectangular \n  face shape), your face length will be the greatest\n  measurement. The forehead, cheekbones, and jawline are \n  similar in size.",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                  Text('DIAMOND FACE SHAPE',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  SizedBox(height: 18),
                  Text("  Those with a diamond face shape will notice that the face\n  length measures largest. Then, in descending order: \n  cheekbones, forehead, and smallest is jawline. \n The chin is pointed. This face shape is easily\n  confused with an oblong face shape, so make sure\n  you pay attention to the other measurements\n  aside from face length.",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                  Text('HEART FACE SHAPE',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  SizedBox(height: 18),
                  Text("  If your forehead measures greater than the cheekbones\n  and jawline, and your chin is pointed, you have a heart face \n  shape.",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                  Text('TRIANGLE FACE SHAPE',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  SizedBox(height: 18),
                  Text("  The key factor for a triangle face shape is that the jawline \n  measures greater than cheekbones, which measures larger \n  than the forehead.",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                  Text('OBLONG FACE SHAPE',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  SizedBox(height: 18),
                  Text("  With an oblong face shape (also referred to as a rectangular \n  face shape), your face length will be the greatest\n  measurement. The forehead, cheekbones, and jawline are\n  similar in size.",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ) ),
                  SizedBox(height: 18),
                ]
        ),
        ),
    ),
        ),
           );
  }

}

class _QuestionState extends State<Question> {
  ChoiceShape? _choiceShape = ChoiceShape.oval;
  ChoiceSkin? _choiceSkin = ChoiceSkin.cool;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Q&A"), backgroundColor: Colors.teal,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Recommendation()),);
          },
        ),
      ),
        body: Center(
          child: Scrollbar(
            thickness: 10,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(' \nwhat is your face shape? ',
                      style: TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  const SizedBox(height:  10),

                  ListTile(
                    title: const Text('Oval shape'),
                    leading: Radio<ChoiceShape>(
                      value: ChoiceShape.oval,
                      groupValue: _choiceShape,
                      onChanged: (ChoiceShape? value){
                        setState(() {
                          _choiceShape = value;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: const Text('Diamond shape'),
                    leading: Radio<ChoiceShape>(
                      value: ChoiceShape.diamond,
                      groupValue: _choiceShape,
                      onChanged: (ChoiceShape? value){
                        setState(() {
                          _choiceShape = value;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: const Text('Heart shape'),
                    leading: Radio<ChoiceShape>(
                      value: ChoiceShape.heart,
                      groupValue: _choiceShape,
                      onChanged: (ChoiceShape? value){
                        setState(() {
                          _choiceShape = value;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: const Text('Oblong shape'),
                    leading: Radio<ChoiceShape>(
                      value: ChoiceShape.oblong,
                      groupValue: _choiceShape,
                      onChanged: (ChoiceShape? value){
                        setState(() {
                          _choiceShape = value;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: const Text('Round shape'),
                    leading: Radio<ChoiceShape>(
                      value: ChoiceShape.round,
                      groupValue: _choiceShape,
                      onChanged: (ChoiceShape? value){
                        setState(() {
                          _choiceShape = value;
                        });
                      },

                    ),
                  ),
                  ListTile(
                    title: const Text('Square shape'),
                    leading: Radio<ChoiceShape>(
                      value: ChoiceShape.square,
                      groupValue: _choiceShape,
                      onChanged: (ChoiceShape? value){
                        setState(() {
                          _choiceShape = value;
                        });
                      },

                    ),
                  ),
                  ListTile(
                    title: const Text('Triangle shape'),
                    leading: Radio<ChoiceShape>(
                      value: ChoiceShape.triangle,
                      groupValue: _choiceShape,
                      onChanged: (ChoiceShape? value){
                        setState(() {
                          _choiceShape = value;
                        });
                      },

                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(' what is your skin tone? ',
                      style: TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ) ),
                  const SizedBox(height: 18),

                  ListTile(
                    title: const Text('Cool Tone'),
                    leading: Radio<ChoiceSkin>(
                      value: ChoiceSkin.cool,
                      groupValue: _choiceSkin,
                      onChanged: (ChoiceSkin? value){
                        setState(() {
                          _choiceSkin = value;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: const Text('Warm tone'),
                    leading: Radio<ChoiceSkin>(
                      value: ChoiceSkin.warm,
                      groupValue: _choiceSkin,
                      onChanged: (ChoiceSkin? value){
                        setState(() {
                          _choiceSkin = value;
                        });
                      },

                    ),
                  ),
                  const SizedBox(height: 18),
                  TextButton(
                    child: const Text('SUBMIT'),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.blueAccent,
                        textStyle: const TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.italic
                        )
                    ),
                    onPressed: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Submit()),);
                    },
                  ),
                  ]
    )
            )
    )
        )
    );

  }
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RESULT"), backgroundColor: Colors.teal,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),);
          },
        ),
      ),
        backgroundColor: Colors.lightBlue[50],
          body: Center(
              child: Scrollbar(
                thickness: 10,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text(' \nHERE YOUR RESULT~! ',
                          style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold
                          ) ),
                      const SizedBox(height: 300),
                      const Text(' \n  To try this sunglasses, You may click the (Try-on) button.\n Otherwise, you may also click (back-arrow) button\n on the top to go to home page. ',
                          style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                          ) ),
                      const SizedBox(height: 50),

                      TextButton(
                        child: const Text('Try-On'),
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.blueAccent,
                            textStyle: const TextStyle(
                                fontSize: 17,
                                fontStyle: FontStyle.italic
                            )
                        ),
                        onPressed: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Submit()),);
                        },
                      ),

                      ]
    )
                  )
    )
          )
    );
  }
}

class _ChatState extends State<Chat> {
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
            title: const Text("Chat-Bot"), backgroundColor: Colors.teal,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: (){
                     Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const HomeScreen()),);
    },
    ),
    ),

        body: ListTile(
          leading: IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.blueAccent, size: 35,),
          onPressed: (){

          },

        ),
          title: Container(
            height: 35,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromRGBO(220, 220, 220, 1)
            ),
            padding: const EdgeInsets.only(left: 15 ),
            child: TextFormField (
              controller: messageController,
              decoration: const InputDecoration(
                hintText:  "Enter a message",
                hintStyle: TextStyle(
                  color: Colors.black26
                ),
                  border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black
              ),
            ),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.send,
            size: 30,
            color: Colors.blueAccent,
            ),
            onPressed: (){
              if(messageController.text.isEmpty){
                print("empty message");
              }
              else {
                setState(() {

                });
              }
            },
          ),
          ),
        );
        }
}