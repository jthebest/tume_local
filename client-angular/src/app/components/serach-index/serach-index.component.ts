import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { User } from '../../models/user';
import { UserService } from '../../services/user.service';


import { Servicio } from '../../models/servicio';
import { ServicioService } from '../../services/servicio/servicio.service';
import { FormGroup, FormBuilder, FormArray, ValidatorFn, FormControl } from '@angular/forms';
import { of } from 'rxjs';
import { GeneralComponent } from "../../components/tools/general/general.component";


@Component({
	selector: 'serach-index',
	templateUrl: './serach-index.component.html',
	styleUrls: ['./serach-index.component.css'],
	providers: [UserService, ServicioService]
})

export class SerachIndexComponent implements OnInit {
	public title: string;

	public servicios: Array<Servicio>;
	public token;
	public serviceRoot;

	formy: FormGroup;
	ordersData = [];

	public checkboxList = [];

	constructor(
		private _route: ActivatedRoute,
		private _router: Router,
		private _userService: UserService,
		private util: GeneralComponent,


		private _servicioService: ServicioService,
		private formBuilder: FormBuilder
	) {
		this.title = 'Inicio';
		this.token = this._userService.getToken();

		this.serviceRoot = 

		this.formy = this.formBuilder.group({
			orders: new FormArray([], minSelectedCheckboxes(1))
		});
		
		//		of(this._servicioService.getServicios().subscribe((orders) => {
		//			this.servicios = response.servicios;
		//			this.ordersData = orders;
		//			this.addCheckboxes();
		//			}));

		// synchronous orders
		// this.orders = this.getOrders();
		// this.addCheckboxes();
	}

	ngOnInit() {
		//this.getServicios();

		// async orders
		of(this.getOrders()).subscribe(orders => {
			this.ordersData = orders;
			this.addCheckboxes();
		});

		//synchronous orders
		//this.ordersData = this.getOrders();
		//this.addCheckboxes();
		console.log('constructor search-index.component cargado correctamente!!');
	}

	goBack() {
		this.util.goBack();
	}

	private addCheckboxes() {
		this.ordersData.forEach((o, i) => {
			const control = new FormControl(o.selected === true); // if (i === 3) first item set to true, else false
			this.checkboxList.filter(x => x.id == o.id)[0].selected = true;
			(this.formy.controls.orders as FormArray).push(control);
		});
	}

	getOrders() {
		// Get the existing data
		var ItemsServicesChilds = localStorage.getItem('ItemsServicesChilds');

	

		// If no existing data, create an array
		// Otherwise, convert the localStorage string to an array
		ItemsServicesChilds = ItemsServicesChilds ? JSON.parse(ItemsServicesChilds) : {};
		

		if (localStorage.hasOwnProperty('ItemsServicesChilds')) {
			this.checkboxList = JSON.parse(localStorage.getItem('ItemsServicesChilds'));
			this.serviceRoot = this.checkboxList[0].descripcion_padre;
			localStorage.removeItem('ItemsServicesChilds');
		}
		else {
			this._router.navigate(['']);
		}

		//this.getServicios();
		/*return [
			{ id: 100, name: 'order 1' , jopo: 'sdf'},
			{ id: 200, name: 'order 2' },
			{ id: 300, name: 'order 3' },
			{ id: 400, name: 'order 4' }
		];*/



		return this.checkboxList;
	}

	submit() {
		//this.checkboxList = [];
		const selectedOrderIds = this.formy.value.orders
			.map((v, i) => v ? this.ordersData[i].id : null)
			.filter(v => v !== null);

		//array object into array object
		var filtered = this.checkboxList.filter(function(item) {
			return selectedOrderIds.indexOf(item.id) !== -1 
			&& item.id_padre !== null && item.selected === true ;
		});
		//console.log(filtered);
		localStorage.setItem('ItemsServicesChilds', JSON.stringify(this.checkboxList));
		this._router.navigate(['login']);
	}

	getServicios() {
		this._servicioService.getServicios().subscribe(
			response => {
				if (response.status == 'success') {
					this.servicios = response.servicios;
					console.log("termino");
				}
			},
			error => {

				console.log(error);
			}
		);
	}


	deleteServicio(id) {
		this._servicioService.delete(this.token, id).subscribe(
			response => {
				// this._router.navigate(['/home']);
				this.getServicios();
			},
			error => {
				console.log(<any>error);
			}
		);
	}

}

function minSelectedCheckboxes(min = 1) {
	const validator: ValidatorFn = (formArray: FormArray) => {
		const totalSelected = formArray.controls
			.map(control => control.value)
			.reduce((prev, next) => next ? prev + next : prev, 0);

		return totalSelected >= min ? null : { required: true };
	};

	return validator;
}