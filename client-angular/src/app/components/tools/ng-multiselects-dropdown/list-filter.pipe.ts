import { Pipe, PipeTransform } from '@angular/core';

import { ListItem } from './multiselect.model';

@Pipe({
    name: 'ng2ListFilter',
    pure: false
})
export class ListFilterPipe implements PipeTransform {
    transform(items: ListItem[], filter: ListItem): ListItem[] {

        if (!items || !filter) {
            return items;
        }


        const resultCars  = [] ;


      
        if (typeof filter === "undefined") {return  resultCars;}

        if (filter.text === "") {return  resultCars ;} 
        if (filter.text === null ) {return  items;} 
        if (  filter.text === '' ) { return   items;}
        
            if (  filter.text.length < 3 ){return   resultCars;}
        

          //  alert(arg);;}  
          //  alert(arg);
            
            for (const car of items) {
              if (car.text.toLowerCase().indexOf(filter.text.toLowerCase()) > -1) {
                resultCars.push(car);
              };
            };
        
        
            return resultCars;



        return items.filter((item: ListItem) => this.applyFilter(item, filter));
    }

    applyFilter(item: ListItem, filter: ListItem): boolean {
        return !(filter.text && item.text && item.text.toLowerCase().indexOf(filter.text.toLowerCase()) === -1);
    }
}
