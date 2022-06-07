const form = document.querySelector(".checkForm");

function checkWrite(event) {
	const title = document.querySelector(".checkTitle");
	const comments = document.querySelector(".checkComments");
	const select = document.querySelector(".checkSelect");

	if (select.value === "0") {
		event.preventDefault();
		alert("문의 내용을 선택해주세요");
	} else if (title.value === "") {
		event.preventDefault();
		alert("제목을 입력해주세요");
	} else if (comments.value === "") {
		event.preventDefault();
		alert("내용을 입력해주세요");
	}
}

form.addEventListener("submit", checkWrite);