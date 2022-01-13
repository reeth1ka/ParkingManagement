package otp;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import javax.net.ssl.HttpsURLConnection;

public class sendOTP {
	public void SendOTP(String otpmessage,String number)
	{
		try
		{
		String apiKey="0dOQlXGntkTbZW6zic5IJjseq9MYNRmfxpPK4LHy3C8E2wVavutTyEgbpnO8QGIHeZ6j312zwklLR0YA";
		String sendId="TXTIND";
		
		String message="Hey this message is send by Parking Solutions using Java Code. Your OTP is: "+otpmessage;
		message=URLEncoder.encode(message,"UTF-8");
		
		String language="english";
		
		String route="v3";
		
		String myUrl="https://www.fast2sms.com/dev/bulkV2?authorization="+apiKey+"&sender_id="+sendId+"&message="+message+"&language="+language+"&route="+route+"&numbers="+number;

		URL url=new URL(myUrl);
		HttpsURLConnection con= (HttpsURLConnection)url.openConnection();
		
		con.setRequestMethod("GET");
		
		con.setRequestProperty("User-Agent","Mozilla/5.0");
		con.setRequestProperty("cache-control", "no-cache");
		System.out.println("Wait!!");
		int responseCode=  con.getResponseCode();
		System.out.println("response code: "+responseCode);
		StringBuffer response=new StringBuffer();
		
		BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
		
		while(true)
		{
			String line=br.readLine();
			
			if(line==null)
			{
				break;
			}
			
			response.append(line);
		}
		
		System.out.println(response);
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
}
