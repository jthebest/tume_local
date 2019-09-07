import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'filter'
})
export class FilterPipe implements PipeTransform {

  //arg === null || arg === '' &&

  transform(value: any, arg: any): any {
    const resultCars = [];

if (typeof arg === "undefined") {return   resultCars;} 
if (arg === "") {return  resultCars ;} 
if (arg === null ) {return  value;} 
if (  arg === '' ) { return   value;}

    if (  arg.lenght < 3 ){return value;}  
  //  alert(arg);
    
    for (const car of value) {
      if (car.title.toLowerCase().indexOf(arg.toLowerCase()) > -1) {
        resultCars.push(car);
      };
    };


    return resultCars;
  }



}
