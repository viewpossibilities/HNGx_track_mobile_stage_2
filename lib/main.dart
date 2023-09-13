

import 'package:flutter/material.dart';

void main() => runApp(CVApp());

class CVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My CV',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue, brightness: Brightness.dark, backgroundColor: Colors.grey, accentColor: Color.fromARGB(255, 114, 35, 2))
      ),
      home: CVView(),
    );
  }
}

class CVView extends StatefulWidget {
  @override
  _CVViewState createState() => _CVViewState();
}

class _CVViewState extends State<CVView> {
  String fullName = 'Ubamadu Possible S.';
  String slackUsername = '@IamPossible';
  String githubHandle = 'https://github.com/viewpossibilities';
  String bio = 'Behold the indomitable Ubamadu Possible, a triumphant graduate of the illustrious realm of Electrical and Electronics Engineering. With unwavering resolve, he now treads the sacred path of Embedding Systems Engineering, a masterful art that grants life to the lifeless, making them speak, stir, and cogitate. In the labyrinthine realm of technology, he stands as a fervent devotee, his heart pulsating to the rhythm of innovation. Currently, he embarks on a perilous journey to master the arcane arts of Mobile Application development, poised to breathe vitality into the digital realms.This year, his spirit soars to unimaginable heights as he becomes an esteemed denizen of the HNGx internship, where boundaries are shattered, and dreams are forged into reality. Ubamadu Possible, the very embodiment of his name, declares with unwavering conviction: "IamPossible," for in his boundless vision, Impossible is but a myth, a challenge eagerly embraced, and a testament to the limitless power of human ingenuity!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My CV',
           style: TextStyle(fontFamily: 'WorkSans', fontWeight: FontWeight.bold,),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditCVView(
                    
                    fullName: fullName,
                    slackUsername: slackUsername,
                    githubHandle: githubHandle,
                    bio: bio,
                    onUpdate: (newFullName, newSlackUsername, newGitHubHandle, newBio) {
                      setState(() {
                        fullName = newFullName;
                        slackUsername = newSlackUsername;
                        githubHandle = newGitHubHandle;
                        bio = newBio;
                      });
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         
              const Text(
                'Full Name:',
                style: TextStyle(fontFamily: 'WorkSans',  fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 3),
                child: Text(fullName,  style: const TextStyle(fontFamily: 'WorkSans',  fontWeight: FontWeight.w300, fontSize: 20, color: Color.fromARGB(255, 233, 231, 231)),),
              ),
              const Divider(),
              const SizedBox(height: 3.0),
              const Text(
                'Slack Username:',
                 style: TextStyle(fontFamily: 'WorkSans',  fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 3),
                child: Text(slackUsername,  style: const TextStyle(fontFamily: 'WorkSans', fontSize: 20, color: Color.fromARGB(255, 233, 231, 231)),),
              ),
               const Divider(),
              const SizedBox(height: 3.0),
              const Text(
                'GitHub Handle:',
                style: TextStyle(fontFamily: 'WorkSans',  fontWeight: FontWeight.bold, fontSize: 20, ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,10,0,3),
                child: Text(githubHandle,  style: const TextStyle(fontFamily: 'WorkSans',  fontSize: 20,color: Color.fromARGB(255, 233, 231, 231))),
              ),
              const Divider(),
              const SizedBox(height: 3.0),
              const Text(
                'Bio:',
                 style: TextStyle(fontFamily: 'WorkSans',  fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,10,0,0),
                child: Text(bio,  
                textAlign: TextAlign.justify,
                style: const TextStyle(fontFamily: 'WorkSans', fontSize: 20, color: Color.fromARGB(255, 233, 231, 231))),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(onPressed:() {
                     Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditCVView(
                      
                      fullName: fullName,
                      slackUsername: slackUsername,
                      githubHandle: githubHandle,
                      bio: bio,
                      onUpdate: (newFullName, newSlackUsername, newGitHubHandle, newBio) {
                        setState(() {
                          fullName = newFullName;
                          slackUsername = newSlackUsername;
                          githubHandle = newGitHubHandle;
                          bio = newBio;
                        });
                      },
                    ),
                  ),
                              );
                  },
                  child: const Text("Edit CV",  style: TextStyle(fontFamily: 'WorkSans', fontSize:15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 233, 231, 231)) ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditCVView extends StatefulWidget {
  final String fullName;
  final String slackUsername;
  final String githubHandle;
  final String bio;
  final Function(String, String, String, String) onUpdate;

  EditCVView({
    required this.fullName,
    required this.slackUsername,
    required this.githubHandle,
    required this.bio,
    required this.onUpdate,
  });

  @override
  _EditCVViewState createState() => _EditCVViewState();
}

class _EditCVViewState extends State<EditCVView> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackUsernameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fullNameController.text = widget.fullName;
    slackUsernameController.text = widget.slackUsername;
    githubHandleController.text = widget.githubHandle;
    bioController.text = widget.bio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit CV'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: fullNameController,
              decoration: const InputDecoration(labelText: 'Full Name'),
               style: const TextStyle(fontFamily: 'WorkSans',   fontSize: 20),
            ),
            TextFormField(
              controller: slackUsernameController,
              decoration: const InputDecoration(labelText: 'Slack Username'),
               style: const TextStyle(fontFamily: 'WorkSans', fontSize: 20),
            ),
            TextFormField(
              controller: githubHandleController,
              decoration: const InputDecoration(labelText: 'GitHub Handle'),
               style: const TextStyle(fontFamily: 'WorkSans',fontSize: 20),
            ),
            TextFormField(
              controller: bioController,
              decoration: const InputDecoration(labelText: 'Bio'),
               style: const TextStyle(fontFamily: 'WorkSans',  fontSize: 20),
              maxLines: 4,
            ),
            const SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final newFullName = fullNameController.text;
                  final newSlackUsername = slackUsernameController.text;
                  final newGitHubHandle = githubHandleController.text;
                  final newBio = bioController.text;
            
                  widget.onUpdate(newFullName, newSlackUsername, newGitHubHandle, newBio);
            
                  Navigator.pop(context);
                },
                child: const Text('Save', style: TextStyle(fontFamily: 'WorkSans', fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 233, 231, 231))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


