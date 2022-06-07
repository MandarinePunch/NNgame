function checkLogin() {
	var id = document.getElementById("login_InputEmail").value;
	var pw = document.getElementById("login_InputPassword").value;

	if (id == "") {
		document.getElementById("login_pid").innerHTML = "이메일을 입력해주세요.";
		return false;
	} else if (pw == "") {
		document.getElementById("login_ppw").innerHTML = "비밀번호를 입력해주세요.";
		return false;
	} else {
		return true;
	}
}

function login_focusOut() {
	var email = document.getElementById("login_InputEmail").value;
	var pw = document.getElementById("login_InputPassword").value;

	if (email != "") {
		document.getElementById("login_pid").innerHTML = "";
	}
	if (pw != "") {
		document.getElementById("login_ppw").innerHTML = "";
	}
}