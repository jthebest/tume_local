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



    checkboxList = [];
    dropdownList = [];
    selectedItems = [];
    dropdownSettings = {};


    constructor(
        private _route: ActivatedRoute,
        private _router: Router,
        private _servicioService: ServicioService,
    ) { }

    ngOnInit() {
        this.getServicios();

        console.log('multiservices-dropdown.component cargado');



        /*this.dropdownList = [
            { id: 1, descripcion: 'Mumbai' , isLabel: false},
            { id: 2, descripcion: 'Bangaluru' },
            { id: 3, descripcion: 'Pune' },
            { id: 4, descripcion: 'Navsari' },
            { id: 5, descripcion: 'New Delhi' }
          ];*/




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
            searchPlaceholderText: 'Escribe aqui',
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

    getServicios() {
        this._servicioService.getServicios().subscribe(
            response => {
                if (response.status == 'success') {
                    this.servicios = response.servicios;
                    this.dropdownList = this.servicios;
                }
            },
            error => {
                console.log(error);
            }
        );
    }

    onSubmit(form) {
        console.log('submited');
    }

    onItemSelect(item: any) {

        let isPadre, descPadre, selectedcheck = false;

        isPadre = this.servicios.filter(x => x.id == item.id)[0].id_padre;
        isPadre = (isPadre == undefined || isPadre == null) ? item.id : isPadre;
        item = Object.defineProperty(item, 'id_padre', { value: isPadre });
        descPadre = this.servicios.filter(x => x.id == item.id_padre)[0].descripcion;
        item = Object.defineProperty(item, 'descripcion_padre', { value: descPadre });

        localStorage.setItem('onItemSelect', item);

        for (let entry of this.servicios.filter(x => (x.id_padre == item.id_padre && x.id_padre != null))) {
            if (entry.id == item.id) { selectedcheck = true; }
            else { selectedcheck = false; }
            this.checkboxList.push({
                id: entry.id, descripcion: entry.descripcion,
                id_padre: entry.id_padre, descripcion_padre: item.descripcion_padre, selected: selectedcheck
            });
        }
        localStorage.setItem('ItemsServicesChilds', JSON.stringify(this.checkboxList));
        this._router.navigate(['serach-index']);
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