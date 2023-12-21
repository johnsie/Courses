public class MainChallenge {

    public static void main(String[] args){
        boolean gameOver=true;
        int score = 800;
        int levelCompleted = 5;

        int bonus = 100;

int finalScore= score;

if (gameOver){
    finalScore+=(levelCompleted * bonus);
    System.out.println("Your final score was " + finalScore);
}//End if

 //Disadvantage of below is that it duplicates code, so open to errors, or a missed update if the original is changed

score = 10_000;
levelCompleted = 8;
bonus= 200;
finalScore= score;

if (gameOver){
    finalScore+= (levelCompleted * bonus);
    System.out.println("Your final score was " + finalScore);
}



    }//end main void
}//End class main
