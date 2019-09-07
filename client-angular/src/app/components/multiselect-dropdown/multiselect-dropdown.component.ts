    import { Component, OnInit } from '@angular/core';

    @Component({
        selector: 'app-multiselect-dropdown',
        templateUrl: './multiselect-dropdown.component.html',
        styleUrls: ['./multiselect-dropdown.component.css'],
    })


    export class MultiselectDropdownComponent implements OnInit {
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


        constructor() {}

        ngOnInit() {
            console.log('app.component cargado');


            this.dropdownList = [
                { item_id: 1, item_text: 'Mumbai' , isLabel: false},
                { item_id: 2, item_text: 'Bangaluru' },
                { item_id: 3, item_text: 'Pune' },
                { item_id: 4, item_text: 'Navsari' },
                { item_id: 5, item_text: 'New Delhi' }
              ];
              this.selectedItems = [
                { item_id: 3, item_text: 'Pune' },
                { item_id: 4, item_text: 'Navsari' }
              ];
              this.dropdownSettings = {
                singleSelection: false,
                idField: 'item_id',
                textField: 'item_text',
                selectAllText: 'Select All',
                unSelectAllText: 'UnSelect All',
                itemsShowLimit: 5,
                allowSearchFilter: true,
                clearSearchFilter: true,
                enableCheckAll: false,
                limitSelection: 3
              };

    
        }
    

        onItemSelect(item: any) {
            console.log('onItemSelect', item);
        }
        onSelectAll(items: any) {
            console.log('onSelectAll', items);
        }
        toogleShowFilter() {
            this.ShowFilter = !this.ShowFilter;
            this.dropdownSettings = Object.assign({}, this.dropdownSettings, { allowSearchFilter: this.ShowFilter });
        }

        handleLimitSelection() {
            if (this.limitSelection) {
                this.dropdownSettings = Object.assign({}, this.dropdownSettings, { limitSelection: 2 });
            } else {
                this.dropdownSettings = Object.assign({}, this.dropdownSettings, { limitSelection: null });
            }
        }
    }