package tool;

public class ThaiName {

    private static ThaiName instance;

    private final String faculty[] = {
        "คณะวิศวกรรมศาสตร์",
         "คณะสถาปัตยกรรมศาสตร์",
         "คณะครุศาสตร์อุตสาหกรรม",
         "คณะวิทยาศาสตร์",
         "คณะเทคโนโลยีการเกษตร",
         "คณะเทคโนโลยีสารสนเทศ",
         "คณะอุตสาหกรรมเกษตร",
         "คณะการบริหารและจัดการ",
         "วิทยาลัยนวัตกรรมการผลิตขั้นสูง",
         "วิทยาลัยนานาชาติ",
         "วิทยาลัยนาโนเทคโนโลยี"
    };

    private final String category[] = {
        "วิทยาศาสตร์",
         "คณิตศาสตร์",
         "ภาษา",
         "มนุษย์ศาสตร์",
         "สังคม การเมือง และการปกครอง",
         "เศรษฐศาสตร์",
         "ธุรกิจ",
         "ประวัติศาสตร์",
         "ศิลปะ",
         "คอมพิวเตอร์ และเทคโนโลยี",
         "วิศวะกรรมศาสตร์",
         "อื่นๆ"

    };

    private final String iconFaculty[] = {
        "egn",
         "arch",
         "kharu",
         "sci",
         "kras",
         "it",
         "argo",
         "amc",
         "inno",
         "inter",
         "nano"

    };

    private final String iconCategory[] = {
        "science",
         "math",
         "lang",
         "human",
         "law",
         "econ",
         "business",
         "history",
         "art",
         "com",
         "eng",
         "etc"
    };

    private ThaiName() {

    }

    public static ThaiName getInstance() {
        if (instance == null) {
            instance = new ThaiName();
        }
        return instance;
    }

    public String getFaculty(int index) {
        return faculty[index];
    }

    public String getCategory(int index) {
        return category[index];
    }

    public String getFacultyIcon(int index) {
        return iconFaculty[index];
    }

    public String getCategoryIcon(int index) {
        return iconCategory[index];
    }

    public int getFacultyCount() {
        return faculty.length;
    }

    public int getCategoryCount() {
        return category.length;
    }

}
