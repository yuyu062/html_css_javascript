class Car {
   //constructor 선언
   constructor(name) {
      //property 선언
      this.name = name;
   }
   
   //method 선언
   run() {
      console.log("달립니다.");
   }
}
         
class SportsCar extends Car{
   //constructor 선언
   constructor(name, turbo = false) {
      //부모 생성사 호출시
      super(name);
      //property 선언
      this.turbo = turbo;
   }
   
   //method
   turnTurbo() {
      if(this.turbo) {
         console.log("터보를 켰습니다.");
      } else {
         console.log("터보 기능이 없습니다.");
      }
   }
}
	