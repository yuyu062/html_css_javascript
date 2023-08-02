//ready이벤트가 발생했을 때 실행할 핸들러 함수 설정
$(init);

function init() {
   var btn1 = $("#btn1");
   /* btn1.addEventListener("click", function() {
      console.log("btn1이 클릭됨");
   });
   console.log(btn1); */
   $("#btn1").click(onClickBtn1);
   
   var btn2 = $("#btn2");
   $("#btn2").click(onClickBtn2);
   
   var divMouse = $("#divMouse");
   divMouse.mouseover(onMouseOverDivMouse);
   divMouse.mouseout(onMouseOutDivMouse);
   // 개발자 도구가 열려있는동안 캐싱 안하기 : 검사 페이지 설정 -> network의 disable cache 체크
   
   var joinForm = $("#joinForm");
   joinForm.submit(checkValidation);
}

function onClickBtn1() {
   console.log("btn1 클릭됨");
}

const onClickBtn2 = function() {
   console.log("btn2 클릭됨");
};

function onMouseOverDivMouse() {
   var divMouse = $(event.target);
   divMouse.removeClass("bg-warning");
   divMouse.addClass("bg-danger");
   
}

function onMouseOutDivMouse() {
   var divMouse = $(event.target);
   divMouse.removeClass("bg-danger");
   divMouse.addClass("bg-warning");
}

function checkValidation() {
   let isValidation = true;
   
   //모든 에러 메세지를 보여주지 않도록 초기화
   var errorMsgs = $(".errorMsg");
   errorMsgs.each((index, el) => $(el).addClass("d-none"));
   
   //uid 검사
   var uid = $("#uid").val();
   if(uid === "") {
      isValidation = false;
      var uidErr = $("#uidErr");
      uidErr.removeClass("d-none");
   }
   
   //uname 검사
   //var uname = document.joinForm.uname.value; //반드시 name이 있어야만 사용 가능한 방법(비권장).
   var uname = $("#uname").val();
   if(uname === "") {
      isValidation = false;
      var unameErr = $("#unameErr");
      unameErr.removeClass("d-none");
   }
   
   //email 검사
   var email = $("#email").val();
   var pattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
   var result = pattern.test(email);
   
   if(email === "") {
      isValidation = false;
      var emailErr1 = $("#emailErr1");
      emailErr1.removeClass("d-none");
   }else if(!result) {
      isValidation = false;
      var emailErr2 = $("#emailErr2");
      emailErr2.removeClass("d-none");
   }
    
    //password 검사
   var pwd = $("#pwd").val();
   var pattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
   var result = pattern.test(email);
   
   if(pwd === "") {
      isValidation = false;
      var pwdErr1 = $("#pwdErr1");
      pwdErr1.removeClass("d-none");
   }else if(pwd.length < 8) {
      isValidation = false;
      var pwdErr2 = $("#pwdErr2");
      pwdErr2.removeClass("d-none");
   }
    
    //skill 체크
    var skill = $("[name=skill]:checked");
    var values = [];
    skill.each((index, el) => values.push($(el).val()));
   console.log(values);
   
   //city 검사
   var city = $("#city").val();
   
   //유효성 검사 실패시 폼 제출 기능 중지
   if(!isValidation) {
      event.preventDefault();
   }
}