package mypack;
// Generated Aug 25, 2019 9:05:10 AM by Hibernate Tools 4.3.1



/**
 * ProblemSet generated by hbm2java
 */
public class ProblemSet  implements java.io.Serializable {


     private int serialNo;
     private String description;
     private String input;
     private String output;

    public ProblemSet() {
    }

	
    public ProblemSet(int serialNo) {
        this.serialNo = serialNo;
    }
    public ProblemSet(int serialNo, String description, String input, String output) {
       this.serialNo = serialNo;
       this.description = description;
       this.input = input;
       this.output = output;
    }
   
    public int getSerialNo() {
        return this.serialNo;
    }
    
    public void setSerialNo(int serialNo) {
        this.serialNo = serialNo;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public String getInput() {
        return this.input;
    }
    
    public void setInput(String input) {
        this.input = input;
    }
    public String getOutput() {
        return this.output;
    }
    
    public void setOutput(String output) {
        this.output = output;
    }




}


