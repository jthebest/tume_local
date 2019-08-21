import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'filter'
})
export class FilterPipe implements PipeTransform {

  transform(value: any, arg: any): any {
if (arg === '' || arg.length < 3) return value;
const resultCars = [];
for (const car of value ) {
  if(car.title.toLowerCase().indexOf(arg.toLowerCase()) > -1 ) {
    resultCars.push(car);
  };
};


    return resultCars;
  }

}
