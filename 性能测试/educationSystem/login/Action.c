Action()
{

	web_url("login.jsp", 
		"URL=http://192.168.43.194:8080/educationalsystemstudent/login.jsp", 
		"TargetFrame=", 
		"Resource=0", 
		"RecContentType=text/html", 
		"Referer=", 
		"Snapshot=t5.inf", 
		"Mode=HTML", 
		EXTRARES, 
		"Url=image/bg4.jpg", ENDITEM, 
		LAST);

	lr_think_time(20);

	lr_start_transaction("login");

	web_submit_data("login", 
		"Action=http://192.168.43.194:8080/educationalsystemstudent/login", 
		"Method=GET", 
		"EncType=", 
		"TargetFrame=", 
		"RecContentType=text/html", 
		"Referer=http://192.168.43.194:8080/educationalsystemstudent/login.jsp", 
		"Snapshot=t6.inf", 
		"Mode=HTML", 
		ITEMDATA, 
		"Name=username", "Value={username}", ENDITEM, 
		"Name=password", "Value={password}", ENDITEM, 
		"Name=role", "Value=student", ENDITEM, 
		EXTRARES, 
		"Url=image/blue.png", "Referer=http://192.168.43.194:8080/educationalsystemstudent/login?username=2016011678&password=123456cs&role=student", ENDITEM, 
		"Url=image/orange.png", "Referer=http://192.168.43.194:8080/educationalsystemstudent/login?username=2016011678&password=123456cs&role=student", ENDITEM, 
		LAST);
	web_find("web_find",
		"What=PDF",
		LAST);
	lr_end_transaction("login", LR_AUTO);

	return 0;
}