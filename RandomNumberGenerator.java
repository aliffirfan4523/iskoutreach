import java.util.Random;

public class RandomNumberGenerator {

    public static void main(String[] args) {
        //array ini akan menyimpan 100 random integer
        int[] randomNumbers = generateRandomNumbers();
        //array ini akan menyimpan jumlah kiraan bagi setiap nombor 0 ke 9
        int[] counts = countNumbers(randomNumbers);
        // Method bagi memaparkan kiraan akhir bagi setiap nombor
        displayCounts(counts);
    }

    public static int[] generateRandomNumbers() {
        Random rand = new Random();

        // array ini akan menyimpan 100 random integer
        int[] randomNumbers = new int[100];

        // Jana dan simpan 100 integer rawak antara 0 dan 9
        for (int i = 0; i < 100; i++) {
            randomNumbers[i] = rand.nextInt(10);
        }
        // kembalikan array integer rawak
        return randomNumbers;
    }

    public static int[] countNumbers(int[] randomNumbers) {
        int[] counts = new int[10];

        // Kira bilangan kejadian setiap nombor
        for (int i = 0; i < randomNumbers.length; i++) {
            counts[randomNumbers[i]]++;
        }
        // kembalikan array kiraan
        return counts;
    }

    public static void displayCounts(int[] counts) {
        // Paparkan kiraan akhir bagi setiap nombor
        for (int i = 0; i < counts.length; i++) {
            System.out.println("Number " + i + ": " + counts[i] + " occurrences.");
        }
    }
}