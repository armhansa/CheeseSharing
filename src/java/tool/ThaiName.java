package tool;

public class ThaiName {
    
    public static String getFaculty(int index) {
        switch(index) {
            case 1: return "คณะวิศวกรรมศาสตร์";
            case 2: return "คณะสถาปัตยกรรมศาสตร์";
            case 3: return "คณะครุศาสตร์อุตสาหกรรม";
            case 4: return "คณะวิทยาศาสตร์";
            case 5: return "คณะเทคโนโลยีการเกษตร";
            case 6: return "คณะเทคโนโลยีสารสนเทศ";
            case 7: return "คณะอุตสาหกรรมเกษตร";
            case 8: return "คณะการบริหารและจัดการวิทยาลัยนวัตกรรมการผลิตขั้นสูง";
            case 9: return "วิทยาลัยนานาชาติ";
            case 10: return "วิทยาลัยนาโนเทคโนโลยีพระจอมเกล้าลาดกระบัง";
            case 11: return "วิทยาลัยอุตสาหกรรมการบินนานาชาติ";
            default: return "";

        }
    }
    
    public static String getCategory(int index) {
        switch(index) {
            case 1: return "วิทยาศาสตร์";
            case 2: return "คณิตศาสตร์";
            case 3: return "ภาษา";
            case 4: return "มนุษย์ศาสตร์";
            case 5: return "สังคม การเมือง และการปกครอง";
            case 6: return "เศรษฐศาสตร์";
            case 7: return "ธุรกิจ";
            case 8: return "ประวัติศาสตร์";
            case 9: return "ศิลปะ";
            case 10: return "คอมพิวเตอร์ และเทคโนโลยี";
            case 11: return "วิศวะกรรมศาสตร์";
            case 12: return "อื่นๆ";
            default: return "";

        }
    }
    
}
