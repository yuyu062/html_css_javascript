/* document.addEventListener("DOMContentLoaded", function() {
   console.log("ready");
}); */
window.onload = init;

function init() {
   var btn1 = document.querySelector("#btn1");
   /* btn1.addEventListener("click", function() {
      console.log("btn1이 클릭됨");
   });
   console.log(btn1); */
   btn1.addEventListener("click", onClickBtn1);
   
   var btn2 = document.querySelector("#btn2");
   /* btn2.addEventListener("click", () => {
      console.log("btn2이 클릭됨");
   }); */
   btn2.addEventListener("click", onClickBtn2);
   
   var divMouse = document.querySelector("#divMouse");
   divMouse.addEventListener("mouseover", onMouseOverDivMouse);
   divMouse.addEventListener("mouseout", onMouseOutDivMouse);
   // 개발자 도구가 열려있는동안 캐싱 안하기 : 검사 페이지 설정 -> network의 disable cache 체크
   
   var joinForm = document.querySelector("#joinForm");
   joinForm.addEventListener("submit", checkValidation);
}

function onClickBtn1() {
   console.log("btn1 클릭됨");
}

const onClickBtn2 = function() {
   console.log("btn2 클릭됨");
};

function onMouseOverDivMouse() {
   var divMouse = event.target;
   console.log(divMouse);
   // 애초에 배경을 bootstrap을 이용해서 주었기 떄문에
   //divMouse.style.backgroundColor="red"; 는 정상작동하지 않음.
   
   divMouse.classList.replace("bg-warning", "bg-danger");
}

function onMouseOutDivMouse() {
   var divMouse = event.target;
   divMouse.classList.replace("bg-danger", "bg-warning");
}

function checkValidation() {
   let isValidation = true;
   
   //모든 에러 메세지를 보여주지 않도록 초기화
   var errorMsgs = document.querySelectorAll(".errorMsg");
   errorMsgs.forEach(el => el.classList.add("d-none"));
   
   //uid 검사
   var uid = document.querySelector("#uid").value;
   if(uid === "") {
      isValidation = false;
      var uidErr = document.querySelector("#uidErr");
      uidErr.classList.remove("d-none");
   }
   
   //uname 검사
   //var uname = document.joinForm.uname.value; //반드시 name이 있어야만 사용 가능한 방법(비권장).
   var uname = document.querySelector("#uname").value;
   if(uname === "") {
      isValidation = false;
      var unameErr = document.querySelector("#unameErr");
      unameErr.classList.remove("d-none");
   }
   
   //email 검사
   var email = document.querySelector("#email").value;
   var pattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
   var result = pattern.test(email);
   
   if(email === "") {
      isValidation = false;
      var emailErr1 = document.querySelector("#emailErr1");
      emailErr1.classList.remove("d-none");
   }else if(!result) {
      isValidation = false;
      var emailErr2 = document.querySelector("#emailErr2");
      emailErr2.classList.remove("d-none");
   }
    
    //password 검사
   var pwd = document.querySelector("#pwd").value;
   var pattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
   var result = pattern.test(email);
   
   if(pwd === "") {
      isValidation = false;
      var pwdErr1 = document.querySelector("#pwdErr1");
      pwdErr1.classList.remove("d-none");
   }else if(pwd.length < 8) {
      isValidation = false;
      var pwdErr2 = document.querySelector("#pwdErr2");
      pwdErr2.classList.remove("d-none");
   }
    
    //skill 체크
    var skill = document.querySelectorAll("[name=skill]:checked");
    var values = [];
    skill.forEach(input => values.push(input.value));
   console.log(values);
   
   //city 검사
   var city = document.querySelector("#city").value;
   
   //유효성 검사 실패시 폼 제출 기능 중지
   if(!isValidation) {
      event.preventDefault();
   }
}