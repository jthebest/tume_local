    import { Component, OnInit } from '@angular/core';
    import { Router, ActivatedRoute, Params } from '@angular/router';
    import { Servicio } from '../../models/servicio';
    import { ServicioService } from '../../services/servicio/servicio.service'; 
 
    @Component({
        selector: 'app-multiservices-dropdown',
        templateUrl: './multiservices-dropdown.component.html',
        styleUrls: ['./multiservices-dropdown.component.css'],
        providers: [ServicioService]
    })


    export class MultiservicesDropdownComponent implements OnInit {

        public servicios: Array<Servicio>;


      /*  myForm:FormGroup;
        disabled = false;
        ShowFilter = false;
        limitSelection = false;
        cities: Array<any> = [];
        selectedItems: Array<any>  = [];
        dropdownSettings: any = {};*/


        disabled = false;
        ShowFilter = false;
        limitSelection = false;
        cities = [];




        dropdownList = [];
        selectedItems = [];
        dropdownSettings = {};


        constructor(		
            private _route: ActivatedRoute,
            private _router: Router,
            private _servicioService: ServicioService,
) {}

        ngOnInit() {
            this.getServicios();

            console.log('multiservices-dropdown.component cargado');



            this.dropdownList = [
                { id: 1, descripcion: 'Mumbai' , isLabel: false},
                { id: 2, descripcion: 'Bangaluru' },
                { id: 3, descripcion: 'Pune' },
                { id: 4, descripcion: 'Navsari' },
                { id: 5, descripcion: 'New Delhi' }
              ];
  



           /*   this.selectedItems = [
                { id: 3, descripcion: 'Pune' },
                { id: 4, descripcion: 'Navsari' }
              ];*/
// [ngModelOptions]="{standalone: true}" 
              this.dropdownSettings = {
                itemsShowLimit: 2,
                singleSelection: true,
                defaultOpen: false,
                closeDropDownOnSelection: true,
                allowSearchFilter: true,
                idField: 'id',
                textField: 'descripcion',
                searchPlaceholderText: 'Type Search',
                noDataAvailablePlaceholderText: 'No data available',
                disabledField: 'isDisabled',
                maxHeight: 100,
                standalone: true,
               // limitSelection: 1
                //selectAllText: 'Select All',
                //unSelectAllText: 'UnSelect All',
               // itemsShowLimit: 1,
               //showSelectedItemsAtTop: false,
                //allowSearchFilter: true,
               // clearSearchFilter: true,
                //enableCheckAll: true,
              };

        }

        getServicios(){
           // this.dropdownList.push({ id: 1, descripcion: 'Mumbai' , isLabel: false});
           // this.dropdownList.push({ id: 0, descripcion: 'Correo' , isLabel: false});
            //console.log(this.dropdownList);
            this._servicioService.getServicios().subscribe(
                response => {
                    //this.dropdownList.push({ id: 2, descripcion: 'bueno' , isLabel: true});
                    if(response.status == 'success'){
                        this.servicios = response.servicios;

                        for (let entry of this.servicios) {
                         //   this.servicios.push(entry);
                         if (entry.id_padre  != null) {

                         }
                            this.dropdownList.push({ id: entry.id, descripcion: entry.descripcion });
                            
                          //  console.log(entry); // 1, "string", false
                        }
                        console.log(this.dropdownList);

                    }
                },
                error => {
                    this.dropdownList.push({ id: 2, descripcion: 'malo' , isLabel: false});
                    console.log(error);
                }
            );
        }
    


       /* onSubmit(form){
            console.log(this.user);
    
            this._servicioService.signup(this.user).subscribe(
                response => {
                    // Token
                    if(response.status != 'error'){
                        this.status = 'success';
                        this.token = response;
                        localStorage.setItem('token', this.token);
    
                        // Objeto usuario identificado
                        this._userService.signup(this.user, true).subscribe(
                            response => {
                                this.identity = response;
                                localStorage.setItem('identity', JSON.stringify(this.identity));
    
                                // Redirección
                                this._router.navigate(['home']);
                            },
                            error => {
                                console.log(<any>error);
                            }
                        );
                    }else{
                        this.status = 'error';
                    }
                },
                error => {
                    console.log(<any>error);
                }
            );
        }
*/

onSubmit(form){
    console.log('submited');
}

        onItemSelect(item: any) {
            console.log('onItemSelect', item );
                localStorage.setItem('token', item);
                this._router.navigate(['/']);
        }
        
        onSelectAll(items: any) {
            console.log('onSelectAll', items);
        }
        toogleShowFilter() {
            console.log('toogleShowFilter');
            this.ShowFilter = !this.ShowFilter;
            this.dropdownSettings = Object.assign({}, this.dropdownSettings, { allowSearchFilter: this.ShowFilter });
        }

        handleLimitSelection() {
            console.log('handleLimitSelection');
            if (this.limitSelection) {
                this.dropdownSettings = Object.assign({}, this.dropdownSettings, { limitSelection: 2 });
            } else {
                this.dropdownSettings = Object.assign({}, this.dropdownSettings, { limitSelection: null });
            }
        }
    }