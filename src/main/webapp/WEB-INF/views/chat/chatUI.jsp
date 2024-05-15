<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<html>
<head>
<title>웹소켓채팅</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="./css/chat/chat_ui.css" />
</head>
<body> 
<input type="hidden" id="chatName" value="${param.chatName }" />
<input type="hidden" id="chatRoom" value="${param.chatRoom }" />
<div class="chat_ui" id="chat_ui_test" style="width: 320px; height: 490px;">
	<div class="msg" id="chatWindow" style="margin-bottom:5px;"></div>
	<div class="sendmsg">
	    <textarea class="textarea" id="chatMessage" onkeyup="enterKey();"></textarea>
	    <div class="button" onclick="sendMessage();">
	 	   <p>전송</p>
	    </div>
	    <div class="clear"></div>
	</div>	
</div>
<div id="logWindow" class="border border-danger" style=" height:100px; overflow:none;"></div> 
</body>
</html>
<script>
/*
페이지가 로드되면 제일 먼저 웹소켓 객체를 생성한다. 이대 사용하는 주소는 
웹소켓 설정 클래스에서 지정한 요청명을 사용해야한다. 
localhost로 작성하면 내컴퓨터에서만 테스트할 수 있고, 내부아이피를 사용하면
다른 사람이 내 컴퓨터에 접속할 수 있다. 
 */
var webSocket
    = new WebSocket("ws://localhost:8586/myChatServer");

//채팅을 위한 전역변수 생성 
var chatWindow, chatMessage, chatId, chatName;

/*
채팅창이 열리면 대화창, 메세지입력란, 대화명 표시란으로 사용할 DOM을 얻어와서
저장한다. 
 */
//window.onload = function() {
    chatWindow = document.getElementById("chatWindow");
    chatMessage = document.getElementById("chatMessage");
    chatName = document.getElementById('chatName').value;    
//}

function nowTime(){
	var d = new Date();
	var ampm = (d.getHours()>=12 ?  "PM" : "AM");
	var h = (d.getHours()>12 ? d.getHours()-12 : d.getHours());
	var m = d.getMinutes();
	
	return ampm+" "+h+":"+m;
}

//입력된 메세지를 전송할 때 호출한다. 
function sendMessage() {
	   
	//내가 보낸 내용에 UI를 적용한다. 
	let msg = '';		
	let time = nowTime();	
	msg =
		"<div class='mytalk' style='margin-top:10px;'>"+
		"<div class=\"b\">\n"+
		"</div>\n"+
		"<div class=\"a\"  style='padding:6px 8px 0px 5px;'>\n"+
		chatMessage.value+"\n"+
		"</div>\n"+
		"<div class=\"time\">\n"+
		time+"\n"+
		"</div>\n" +
		"</div>\n";
		
	//메세지를 대화창에 추가한다. 
    chatWindow.innerHTML += msg;
    
	//웹소켓 서버로 메세지를 전송한다. 전송형식은 '채팅아이디|메세지'     							
    webSocket.send(chatName + '|' + chatMessage.value);
    //다음 메세지를 즉시 입력할 수 있도록 비워준다. 
    chatMessage.value = ""; 
    //대화창의 스크롤을 항상 제일 아래로 내려준다. 
    chatWindow.scrollTop = chatWindow.scrollHeight; 
}

//웹소켓 서버에서 접속종료
function disconnect() {
    webSocket.close();
}

//메세지 입력후 엔터키를 누르면 즉시 메세지 전송 
function enterKey() {
	console.log("키 눌러짐");
	//keyCode를 통해 Enter키가 눌러지는것을 감지한다. 
    if (window.event.keyCode == 13) {  
        sendMessage();
    }
}

//웹소켓 서버에 연결되었을때 자동으로 호출
webSocket.onopen = function(event) {   
    chatWindow.innerHTML += "웹소켓 서버에 연결되었습니다.<br/>";
    webSocket.send("sender_joinSOIEFHJ357SHQ299823850WEHI|"+chatName+"입장하셨습니다.");
    console.log(chatName);
};

//웹소켓 서버가 종료되었을때 자동으로 호출 
webSocket.onclose = function(event) {
    chatWindow.innerHTML += "웹소켓 서버가 종료되었습니다.<br/>";
};

//에러발생시 자동으로 호출 
webSocket.onerror = function(event) { 
    alert(event.data);
    chatWindow.innerHTML += "채팅 중 에러가 발생하였습니다.<br/>";
}; 

//웹소켓 서버가 메세지를 받았을때 자동으로 호출 
webSocket.onmessage = function(event) {
	console.log("event.data=", event.data);
	//대화명과 메세지를 분리한다. 전송시 |(파이프)로 조립해서 보낸다. 
    var message = event.data.split("|");  
	//앞부분은 보낸 사람의 대화명
    var sender = message[0];
	//뒷부분은 메세지 내용 
    var content = message[1]; 
    if (content != "") {
        if (content.match("/")) { 
        	//메세지에 슬러쉬가 포함되어 있다면 명령어로 인식한다. 
            if (content.match(("/" + chatName))) {
            	/*
            	귓속말은 지정된 특정 사용자에게만 보여진다. 서버에서는 
            	모든 사용자에게 메세지를 Echo하지만 if문을 통해 한사람
            	에게만 디스플레이된다. 
          		*/
                var temp = content.replace(("/" + chatName), "");
                msg = makeBalloon(sender, temp);
            	chatWindow.innerHTML += msg;
            }
        }
        else {
        	console.log(sender, content);
        	if(sender.endsWith('sender_leaveSOIEFHJ234NIE29035920354WFIE')){
        	    chatWindow.innerHTML += "퇴장하셨습니다.<br/>";
        	}
        	else if(sender.endsWith('sender_joinSOIEFHJ357SHQ299823850WEHI')){
        	    chatWindow.innerHTML += "입장하셨습니다.<br/>";
        	}
        	else{
	        	//슬러쉬가 없다면 일반적인 메세지로 판단한다.
	        	msg = makeBalloon(sender, content);   
	            chatWindow.innerHTML += msg;
        	}
        }
    }
    
    //스크롤바를 제일 아래로 내려준다. 
    chatWindow.scrollTop = chatWindow.scrollHeight; 
};

//상대방이 보낸 메세지를 출력하기 위한 부분
function makeBalloon(sender, cont){
	var time = nowTime();
	var msg = '';
	msg =
		"<div class='othertalk' style='margin-top:10px;'>"+
		"<div class=\"profile_image\" style=\"background: url(../images/chat/profile_image.png) no-repeat;\">\n"+
		"</div>\n"+
		"<div class=\"box\">\n"+
		"<div class=\"profile_name\">"+sender+"\n"+
		"</div>\n"+
		"<div class=\"a\">\n"+
		"</div>\n"+
		"<div class=\"b\" style='padding:6px 8px 0px 5px;'>\n"+
		cont+"\n"+
		"</div>\n" +
		"<div class=\"time\">\n"+
		time+"\n"+ 
		"</div>\n"+
		"</div>\n"+
		"</div>\n";
	
	return msg;
}
</script>