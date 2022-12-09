/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBhandler;

/**
 *
 * @author admin
 */
public class fareCalculator {
   

    public static double Onewayfare(double distance, int costPerKm)
    {

        double actual =(distance*costPerKm)/10;
        return Math.ceil(actual);
    }

   

    public static double roundOff(double fare) {
        double val = Math.ceil(fare);
        if (val % 5 != 0) {
            val = ((int) (val / 5)) * 5 + 5;
        }
        return val;
    }
    
    public int oneflight(int fare,int c,int a)
    {
        int val=(fare*a)+(fare/2*c);
        return val;
    }
}


