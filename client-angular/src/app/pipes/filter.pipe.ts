import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'filter'
})
export class FilterPipe implements PipeTransform {

  //arg === null || arg === '' &&

  transform(value: any, arg: any): any {
    const resultNames = [];

if (typeof arg === "undefined") {return   resultNames;} 
if (arg === "") {return  resultNames ;} 
if (arg === null ) {return  value;} 
if (  arg === '' ) { return   value;}

    if (  arg.lenght < 3 ){return value;}  
   
    for (const jsonVal of value) {
      if(jsonVal != "undefined" && jsonVal != null ) {
        if(jsonVal != "undefined" && jsonVal != null )
        {
          if (jsonVal.nombre.toLowerCase().indexOf(arg.toLowerCase()) > -1) {
            resultNames.push(jsonVal);
          };
        }
      }
    };
    return resultNames;
  }
}
