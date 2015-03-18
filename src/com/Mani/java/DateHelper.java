package com.rohit.java;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class DateHelper {

	public static List<String> listOfDates() {
		int n=7;
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());//sets present  day to date object
		calendar.add(Calendar.DATE, n); // n is the number of days upto which to be calculated
		Date futureDate = calendar.getTime();//sets the 7th day to future date
		List<String> listDates = returnListOfDatesBetweenTwoDates(new Date() , futureDate);
		
		return listDates;
		

	}


	public static List<String> returnListOfDatesBetweenTwoDates(java.util.Date fromDate, java.util.Date toDate) 
	{
		List<String> listOfDates = new ArrayList<String>();
		Calendar startCal = Calendar.getInstance();//
		startCal.setTime(fromDate);//sets startcal to  present date
		Calendar endCal = Calendar.getInstance();
		endCal.setTime(toDate);//sets endcal to 7th day
		while (startCal.getTimeInMillis() < endCal.getTimeInMillis())
		{
			java.util.Date date = startCal.getTime();//returns dates till 7th day 
			listOfDates.add(new SimpleDateFormat("yyyy-MM-dd").format(date).trim());//add dates to list in format yyyy-MM-dd
			startCal.add(Calendar.DATE, 1);//add next day to start cal to iterate
		}
		return listOfDates;
}
	
	public static String validateDate(String dob)
	{	
		
		System.out.println("inside DateHelper's validateDate()");
		String year1=dob.substring(0, 4);
		String month1=dob.substring(5,7);
		String nday=dob.substring(8,10);
		int year=Integer.parseInt(year1);
		System.out.println("Dob year------------->"+year);
		int month =Integer.parseInt(month1);
		System.out.println("Dob month----------------> "+month);
		int day = Integer.parseInt(nday);
		System.out.println("Dob day----------------> "+day);
		
		
		if((month >= 1 && month <= 12) && (day >= 1 && day <= 31))
        {
            //For months with 30 days
            if((month == 4 || month == 6 || month == 9 || month == 11) && (day <= 30))
            {
                System.out.println("Successfly Checked for 30days in the month---->"+month);
            	return "";
            }

            //For months with 31 days
            if((month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) && (day <= 31))
            {	
            	System.out.println("Successfly Checked for 31days in the month---->"+month);
            	return "";
            }

            //For February
            if((month == 2) && (day <=29))
            {	
            	System.out.println("leapYear Validation-------->"+year);
            	System.out.println("FEB---->"+month);
                //Boolean for valid leap year
                boolean validLeapYear = false;

                //A leap year is any year that is divisible by 4 but not divisible by 100 unless it is also divisible by 400
                if((year % 400 == 0) || ((year % 4 == 0) && (year %100 !=0)))
                {	
                	System.out.println("in side leapyear validation");
                	return "";
                }

                if (validLeapYear == true && day <= 29)
                {
                	return "";
                }

                else if (validLeapYear == false && day <= 28)
                {
                	return "";
                }
            }
        }return "<h1>Date is Invalid<h1>";
	}
}

        
   
