public class MainChallenge {

    public static void main(String[] args){
        boolean gameOver=true;
        int score = 800;
        int levelCompleted = 5;

        int bonus = 100;

int finalScore= score;

        int highScore= calculateScore(gameOver,score,levelCompleted, bonus);
        System.out.println("The high score is " + highScore);

score = 10_000;
levelCompleted = 8;
bonus = 200;

 //Disadvantage of below is that it duplicates code, so open to errors, or a missed update if the original is changed

 System.out.println("The next highscore is " +
         calculateScore(true,10000, 8, 200));


    }//end main void


public static int calculateScore(boolean gameOver, int score, int levelCompleted, int bonus) {

        int finalScore= score;

        if (gameOver){
            finalScore+=(levelCompleted * bonus);
            finalScore+= 1000;

        }//End if

    return finalScore;
}//end method calculateScore



}//End class main
