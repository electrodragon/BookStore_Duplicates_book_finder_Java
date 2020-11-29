import java.io.*;
import java.util.*;

public class BookStore {

    public static void main(String[] args) throws IOException {

        Set<String> set = new HashSet<String>();
        File file = new File("C:\\Users\\Owner\\Desktop\\SamsBookstore.txt");
        FileWriter  fw = new FileWriter("SamsDuplicate.txt");
        Scanner scan = new Scanner(file);
        Set<String> res = new HashSet<String>();
        while (scan.hasNextLine()) {
            String line = scan.nextLine();
            if (line.isEmpty()) {
                continue;
            }
            if (set.contains(line)) {
                if (!res.contains(line)) {
                    res.add(line);
                    System.out.println(line);
                    fw.write(line + "\n\n");
                }
            } else {
                set.add(line);
            }
        }
        scan.close();
        fw.close();
    }
}