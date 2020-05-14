Action()
{

	web_url("login.jsp", 
		"URL=http://192.168.43.194:8080/educationalsystemstudent/login.jsp", 
		"TargetFrame=", 
		"Resource=0", 
		"RecContentType=text/html", 
		"Referer=", 
		"Snapshot=t1.inf", 
		"Mode=HTML", 
		EXTRARES, 
		"Url=image/bg4.jpg", ENDITEM, 
		LAST);

	lr_think_time(23);

	web_submit_data("login", 
		"Action=http://192.168.43.194:8080/educationalsystemstudent/login", 
		"Method=GET", 
		"EncType=", 
		"TargetFrame=", 
		"RecContentType=text/html", 
		"Referer=http://192.168.43.194:8080/educationalsystemstudent/login.jsp", 
		"Snapshot=t2.inf", 
		"Mode=HTML", 
		ITEMDATA, 
		"Name=username", "Value=2016011678", ENDITEM, 
		"Name=password", "Value=123456cs", ENDITEM, 
		"Name=role", "Value=student", ENDITEM, 
		EXTRARES, 
		"Url=image/blue.png", "Referer=http://192.168.43.194:8080/educationalsystemstudent/login?username=2016011678&password=123456cs&role=student", ENDITEM, 
		"Url=image/orange.png", "Referer=http://192.168.43.194:8080/educationalsystemstudent/login?username=2016011678&password=123456cs&role=student", ENDITEM, 
		LAST);

	web_url("选课", 
		"URL=http://192.168.43.194:8080/educationalsystemstudent/optional", 
		"TargetFrame=", 
		"Resource=0", 
		"RecContentType=text/html", 
		"Referer=http://192.168.43.194:8080/educationalsystemstudent/login?username=2016011678&password=123456cs&role=student", 
		"Snapshot=t3.inf", 
		"Mode=HTML", 
		LAST);

	return 0;
}