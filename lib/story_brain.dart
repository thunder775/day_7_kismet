//TODO: Step 4 - Create a new class called StoryBrain. Make sure the storyData variable is inside the class and uncomment it

// TODO: Step 5 - Create class methods, getStory(), getChoice1() and getChoice2() which returns first storyTitle, first choice1 and first choice2 from storyData

// TODO: Step 7 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing. Update getStory, getChoice1 and getChoice2 to use this storyNumber to return the value

// TODO: Step 8 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

// TODO: Step 10 - Download the story plan here: https://drive.google.com/file/d/1g6b8P6kyk_l36TT6XsIS8Su3qDMjG-AB/view?usp=sharing and using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

// TODO: Step 11 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0. (Create the method called restart)

// TODO: Step 12 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

// TODO: Step 13 -  Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
import 'story.dart';

class StoryBrain {
  int storyNumber = 0;
  List<Story> storyData = [
    Story(
        storyTitle:
        'You have gone on a trek with your friends but got lost in the forest. You don\'t have any devices and it is now pitch dark. You are wandering in hope to see another human, and suddenly you see a wooden cabin with some fire light. Would you go and knock the door of the cabin?".',
        choice1: 'I\'ll go to the cabin and ask for help',
        choice2:
        'I\'ll ignore the cabin because who possibly can live in the middle of a Jungle'),
    Story(
        storyTitle:
        'A guy with plastic apron covered with blood and a huge knife in his hand opens the door',
        choice1: 'Ask him if that\'s human blood.',
        choice2: 'Ignore the attire and ask if you can get some water'),
    Story(
        storyTitle: 'He tells you it is Human blood of a very bad person',
        choice1: 'You believe him and ask if he can help you?',
        choice2: 'You panic, and run away back to jungle'),
    Story(
        storyTitle:
        'You are trapped in the jungle trying to find a way out, but it is end of your journey as a poisonous snake bites you and you die painfully',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'He goes inside, you act smart and try to peek in the cabin. You follow the blood trail to the back of cabin and discover one of your friends lying there. As you turn to run, a sharp pain arises in your shoulder and everything goes dark. You have escaped from this world',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'He gives you sleeping bag, put a bonfire to keep you warm, gives you food and you both bond over anatomy of human body. In morning he takes you out of jungle and promises you to invite for his next \'hunt\'',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() => storyData[storyNumber].storyTitle;

  String getChoice1() => storyData[storyNumber].choice1;

  String getChoice2() => storyData[storyNumber].choice2;

  void nextStory(int choiceNumber) {
    if (storyNumber == 3 || storyNumber == 4 || storyNumber == 5) {
      restart();
    }else if(storyNumber==0 && choiceNumber==1) {
storyNumber=1;
    }else if(storyNumber==0 && choiceNumber==2){
      storyNumber=3;
    }else if(storyNumber==1 && choiceNumber==1){
      storyNumber=2;
    }else if(storyNumber==1 && choiceNumber==2){
      storyNumber=4;
    }else if(storyNumber==2 && choiceNumber==1){
      storyNumber=3;
    }else if(storyNumber==2 && choiceNumber==1){
      storyNumber=5;
    }
  }

  void restart() {
    storyNumber = 0;
  }

}
