				function formValidation()  
				{  
				var uid = document.myform.username;  
				var passid = document.myform.pass;  
				var fname = document.myform.fname;
				var lname = document.myform.lname;
				var uadd = document.myform.address;  
				var ucountry = document.myform.location;  
				  
				var uemail = document.myform.email;  
				var udob = document.myform.dob;
				var usex=document.myform.gender;
				var mobile = document.myform.mobile;
				if(allLetter(fname))  
				{  
				if(allLetter(lname))  
				{
				if(userid_validation(uid,5,12))  
				{  
				if(passid_validation(passid,6,20))  
				{  
				if(addalphanumeric(uadd))  
				{
				if(dobalphanumeric(udob))  
				{   
				if(countryselect(ucountry))  
				{  
				if(allnumeric(mobile))  
				{  
				if(ValidateEmail(uemail))  
				{  
				if(validsex(usex))  
				{  
				}
				}
				}   
				}
				}  
				}   
				}  
				}  
				}  
				}  
				return false;  
				  
				} 
				function userid_validation(uid,mx,my)  
				{  
				var uid_len = uid.value.length;
				if (uid_len == 0)
				{
					document.getElementById("msg").innerHTML="User Id should not be empty";
					uid.focus();  
				return false;  
				}  
				else if (uid_len >= my || uid_len < mx)  
				{  
					document.getElementById("msg").innerHTML="length should be between "+mx+" to "+my;  
					uid.focus();  
				return false;  
				}  
				else
			    	document.getElementById("msg").innerHTML="";

				return true;  
				}  
				function passid_validation(passid,mx,my)  
				{  
				var passid_len = passid.value.length;  
				if (passid_len == 0)  
				{  
					document.getElementById("msg1").innerHTML="Password should not be empty";  
				passid.focus();  
				return false;
				}
				else if(passid_len >= my || passid_len < mx)
				{
					document.getElementById("msg1").innerHTML="Password should be length between "+mx+" to "+my;  
					passid.focus();  
					return false;
				}  
				else
			    	document.getElementById("msg1").innerHTML="";

				return true;  
				}  
				function compare()
				{
					var pass=document.getElementsByName("pass").value;
					var pass1=document.getElementsByName("pass1").value;
					var h1=(pass.localeCompare(pass1));
					document.getElementById("msg9").innerHTML=h1;
					/*if(h1=="false")
						{
						
						document.getElementById("msg9").innerHTML="password should be match";  
						return false;

												}
					else
						{
						
						document.getElementById("msg9").innerHTML="";
						return true;
						}
*/				}
				function allLetter(uname)  
				{   
				var letters = /^[A-Za-z]+$/;  
				if(uname.value.length == 0)
				{
				document.getElementById("msg8").innerHTML="name should not be empty";  
				uname.focus();  
				return false;
				}
				else if(uname.value.match(letters))  
				{
				document.getElementById("msg8").innerHTML="";
				return true;  
				}  
				else  
				{  
					document.getElementById("msg8").innerHTML="name must have alphabet characters only";  
				uname.focus();  
				return false;  
				}  
				}  
				function addalphanumeric(uadd)  
				{   
				var letters = /^[0-9a-zA-Z]+$/;
				if(uadd.value.length == 0)
				{
				document.getElementById("msg3").innerHTML="address should be given";  
				uadd.focus();  
				return false;
				}
				else if(uadd.value.match(letters))  
				{
				document.getElementById("msg3").innerHTML="";
				return true;  
				}  
				else  
				{  
				document.getElementById("msg3").innerHTML="address must have alphanumeric characters";  
				uadd.focus();  
				return false;  
				}  
				}
				function dobalphanumeric(udob)  
				{   
				var letters = /^[0-9a-zA-Z]+$/;  
				if(udob.value.length == 0)
				{
				document.getElementById("msg6").innerHTML="dob is needed";  
				udob.focus();  
				return false;
				}
				else if(udob.value.match(letters))  
				{
				document.getElementById("msg6").innerHTML="";
				return true;  
				}  
				else  
				{  
				document.getElementById("msg6").innerHTML="User dob should in format mm/dd/yyyy";  
				udob.focus();  
				return false;  
				}
				}
				function countryselect(ucountry)  
				{  
				if(ucountry.value == "Default")  
				{  
				document.getElementById("msg2").innerHTML="Select your country from the list";  
				ucountry.focus();  
				return false;  
				}  
				else  
				{  
		    	document.getElementById("msg2").innerHTML="";
				return true;  
				}  
				}  
				function allnumeric(uzip)  
				{   
				var numbers = /^[0-9]+$/;
				if((uzip.value.length)!=10)
				{
				document.getElementById("msg7").innerHTML="mobile code must have 10 digits only";  
				uzip.focus();  
				return false;  
				}
				else if(uzip.value.match(numbers))  
				{
		    	document.getElementById("msg7").innerHTML="";
				return true;  
				}
				else  
				{  
				document.getElementById("msg7").innerHTML="mobile code must have numeric characters only";  
				uzip.focus();  
				return false;  
				}  
				}  
				function ValidateEmail(uemail)  
				{  
				var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
				if(uemail.value.length == 0)
				{
				document.getElementById("msg5").innerHTML="email should not be empty";  
				uemail.focus();  
				return false;
				}
				else if(uemail.value.match(mailformat))  
				{
				document.getElementById("msg5").innerHTML="";
				return true;  
				}  
				else  
				{  
				document.getElementById("msg5").innerHTML="You have entered an invalid email address!";  
				uemail.focus();  
				return false;  
				}  
				}
				function sexselect(usex)  
				{  
				if(usex.value == "I am")  
				{  
				document.getElementById("msg4").innerHTML="Select your sex from the list";  
				usex.focus();  
				return false;  
				}  
				else  
				{  
		    	document.getElementById("msg4").innerHTML="";
				return true;  
				}  
				}  
