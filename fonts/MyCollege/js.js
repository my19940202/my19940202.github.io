

function XHR(){	//����XMLHttpRequest����
	var xhr;
	try{
		xhr=new XMLHttpRequest();
	}catch(e){
    		var a=['MSXML2.XMLHTTP.5.0','MSXML2.XMLHTTP.4.0','MSXML2.XMLHTTP.3.0','MSXML2.XMLHTTP','MICROSOFT.XMLHTTP.1.0','MICROSOFT.XMLHTTP.1','MICROSOFT.XMLHTTP'];
    		for (var i=0;i<a.length;i++){
      			try{
        			xhr = new ActiveXObject(a[i]);
        			break;
      			}catch(e){}
    		}
  	}
	return xhr;
}
function getv(dd){
	return document.getElementById(dd);
	}

function jsc(){
        xhr=XHR();
getv("zt").innerHTML="<font color=#ff0000>������...</font>";
		//getv("button").disabled=true;
		xhr.open("post", "asp.asp", true);
		xhr.setRequestHeader("cache-control","no-cache");
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		data="id="+getv("t").value+"&us="+getv("us").value;
	//	document.write(data);
	    xhr.send(data);
		xhr.onreadystatechange=function(){
		if(xhr.readyState==4){
			if(xhr.status==200){
			//document.write(xhr.responseText);
			//getv("textarea").innerHTML=xhr.responseText;
			if (xhr.responseText==1){
			getv("tt").innerHTML=new Date().toLocaleString()+' ����'+'��һ����������'.charAt(new Date().getDay());
			getv("zt").innerHTML="������...";
			getv("t").value="";
		getv("button").disabled=false;	
				//getPage();	//���·�ҳ��Ϣ
				
			
			}else{
				alert('����ʧ�ܣ�');
			}
			}
		}
		
	}

	

	}
	
	
	function jss(){
        xhr=XHR();
		xhr.open("get", "asp2.asp", true);
		xhr.setRequestHeader("cache-control","no-cache");
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	
	//	document.write(data);
	    xhr.send(null);
		xhr.onreadystatechange=function(){
		if(xhr.readyState==4){
			if(xhr.status==200){
			//document.write(xhr.responseText);
			getv("textarea").value=xhr.responseText;
			getv("tt").innerHTML=new Date().toLocaleString()+' ����'+'��һ����������'.charAt(new Date().getDay());
		
		
				//getPage();	//���·�ҳ��Ϣ
			}
			
			else{
				alert('����ʧ�ܣ�');
			}
		
		}
		
	}

	setTimeout("jss()",1000);

	}
	
	function cclse(){
		
		 xhr=XHR();
		xhr.open("get", "asp3.asp", true);
		xhr.setRequestHeader("cache-control","no-cache");
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	
	//	document.write(data);
	    xhr.send(null);
		xhr.onreadystatechange=function(){
		if(xhr.readyState==4){
			if(xhr.status==200){
			//document.write(xhr.responseText);
			getv("textarea").value=xhr.responseText;
			getv("tt").innerHTML=new Date().toLocaleString()+' ����'+'��һ����������'.charAt(new Date().getDay());
		
		
				//getPage();	//���·�ҳ��Ϣ
			}
			
			else{
				alert('����ʧ�ܣ�');
			}
		
		}
		
	}

	
		}