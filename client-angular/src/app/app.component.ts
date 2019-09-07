import { Component, OnInit, DoCheck } from '@angular/core';
import { UserService } from './services/user.service';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [UserService]
})
export class AppComponent implements OnInit, DoCheck{
  	public identity;
	  public token;
	  
	  dropdownList = [];
	  selectedItems = [];
	  dropdownSettings = {};


	constructor(
		private _userService: UserService
	){
		this.identity = this._userService.getIdentity();
		this.token = this._userService.getToken();
	}

	ngOnInit(){
		console.log('app.component cargado');
		this.dropdownList = [
			{ item_id: 1, item_text: 'Mumbai' },
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
			itemsShowLimit: 3,
			allowSearchFilter: true
		  };

	}

	onItemSelect(item: any) {
		console.log(item);
	  }
	  onSelectAll(items: any) {
		console.log(items);
	  }

	ngDoCheck(){
		this.identity = this._userService.getIdentity();
		this.token = this._userService.getToken();
	}

}
