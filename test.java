import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Scanner;

public class AgeCalculator
{
   public static void main(String args[])   
{  
  
      System.out.print("Enter your IC number ");  
        Scanner scanner = new Scanner(System.in);  
        //reads the IcNumber from the user  
        String input = scanner.nextLine();  
        scanner.close();
        int currentAge = calcAge(input);
        System.out.println("Your age is " + currentAge);

} 
      static int calcAge(String IcNo)
   { 
    //Assuming IcNo is a valid Malaysian IC number in format YYMMDD-XX-XXXX
    
    //Extract the year, month and day from the IC number
    int year = Integer.parseInt(IcNo.substring(0,2)); //adjust for the format
    int month = Integer.parseInt(IcNo.substring(2,4));
    int day = Integer.parseInt(IcNo.substring(4,6));

    //Calculate the age based on the current date and the birthdate extracted from the IC number
    Calendar currentDate = Calendar.getInstance();
    System.out.println(currentDate.get(Calendar.YEAR));

    //Adjust the year based on the birthdate either 1900 or 2000
    int thirdAndFourthDigits = (currentDate.get(Calendar.YEAR) / 10) % 100;

    if (thirdAndFourthDigits >= year && year!=00) {
        year += 1900;
    } else {
        year += 2000;
    }

    int age = currentDate.get(Calendar.YEAR) - year;
    if (currentDate.get(Calendar.MONTH) < month || (currentDate.get(Calendar.MONTH) == month && currentDate.get(Calendar.DAY_OF_MONTH) < day)) {
        age--; //Adjust age if birthdate has not yet occurred this year
    }

    return age;
}
}
