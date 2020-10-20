package Foundation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;

public class OGRow {
    private double x;
    private double y;
    private double r;
    private String result;
    private LocalTime time;
    private SimpleDateFormat sOut= new SimpleDateFormat("hh:mm:ss");
    private SimpleDateFormat sIn = new SimpleDateFormat("h:m:s");
    public OGRow(double x,double y,double r, String result, LocalTime time){
        this.x=x;
        this.y=y;
        this.r=r;
        this.result=result;
        this.time=time;
    }
    public OGRow(){}
    public String timeFormat(){
        Date date = null;
        try {
            date = sIn.parse(time.toString());
        } catch (ParseException e){
            e.printStackTrace();
        }
        return sOut.format(date);
    }

    public void setRow(OGRow ogRow){
        this.x=ogRow.getX();
        this.y=ogRow.getY();
        this.r=ogRow.getR();
        this.result=ogRow.getResult();
        this.time=ogRow.getTime();
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public double getR() {
        return r;
    }

    public String getResult() {
        return result;
    }

    public LocalTime getTime() {
        return time;
    }
}