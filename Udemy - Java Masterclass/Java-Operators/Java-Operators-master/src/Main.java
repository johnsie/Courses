

public class Main {
    public static void main(String[] args) {


        int result = 1 + 2;
        System.out.println("1 + 2 =" + result);
        int previousResult = result;
        System.out.println("previousResult= " + previousResult);
        result= result - 1;
        System.out.println("3 - 1 = " + result);
        System.out.println("previousResult= " + previousResult);

        result = result * 10;
        System.out.println("2 * 10 = " + result);

        result  = result /5;
        System.out.println("20 / 5 = "+ result);

        result = result % 3;
        System.out.println("4 / 3=  "+ result);

        //Abbreviating operators
        result++;
        System.out.println("1+1 = "+ result);

        result--;
        System.out.println("2-1 = "+ result);

        result +=2;

        System.out.println("1+2 ="+ result);

        result *=10;
        System.out.println("3*10 ="+ result);

        result /=3;
        System.out.println("30/10 ="+ result);

        result -=2;
        System.out.println("10-8 ="+ result);

        boolean isAlien= false;

        if (isAlien==false)
        System.out.println("It is not an alien!");


        int topScore = 80;

        if (topScore <=100)
        {
            System.out.println("You've got the high score");
        }


        int secondTopScore=81;

        //Using the AND operator
        //Logical AND is &&
        //Bitwise & (Will cover that later)

        if ((topScore > secondTopScore) && (topScore <100))
        {
            System.out.println("Greater than second top score and less than 100");
        }

        //Using the OR operator
        //Logical OR is ||
        //Bitwise | (Will cover that later)

        if ((topScore > 90) || (secondTopScore <=90))
        {
            System.out.println("Either or both the conditions are true");
        }

    }//end main


}//end class