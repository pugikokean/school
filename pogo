import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        String correctUsername = "kian";
        String correctPassword = "maicalovelove";

        String username, password;
        int attempts = 0;
        int maxAttempts = 3;
        boolean loggedIn = false;

        System.out.println("===== LOGIN SYSTEM =====");

        while (attempts < maxAttempts && !loggedIn) {

            System.out.print("\nEnter Username: ");
            username = input.nextLine();

            System.out.print("Enter Password: ");
            password = input.nextLine();

            if (username.equals(correctUsername)
                    && password.equals(correctPassword)) {

                System.out.println("\nLogin Successful sobrang pogi mo!");
                System.out.println("Welcome pogi ansarap mo " + username + "!");
                loggedIn = true;

            } else if (!username.equals(correctUsername)
                    && !password.equals(correctPassword)) {

                System.out.println("\nWrong Username and Password!");

            } else if (!username.equals(correctUsername)) {

                System.out.println("\nWrong Username!");

            } else if (!password.equals(correctPassword)) {

                System.out.println("\nWrong Password!");

            }

            if (!loggedIn) {
                attempts++;
                System.out.println("Attempts left: "
                        + (maxAttempts - attempts));
            }
        }

        if (!loggedIn) {
            System.out.println("\nAccount Locked! Too many attempts,di ka pogi.");
        }

        input.close();
    }
}
