import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { User } from '../../models/user';
import { UserService } from '../../services/user.service';


import { Servicio } from '../../models/servicio';
import { ServicioService } from '../../services/servicio/servicio.service'; 

@Component({
	selector: 'serach-index',
	templateUrl: './serach-index.component.html',
	styleUrls: ['./serach-index.component.css'],
	providers: [UserService, ServicioService]
})

export class SerachIndexComponent implements OnInit{
	public title: string;

	public servicios: Array<Servicio>;
	public token;

	constructor(
		private _route: ActivatedRoute,
		private _router: Router,
		private _userService: UserService,


		private _servicioService: ServicioService
	){
		this.title = 'Inicio';
		this.token = this._userService.getToken();
	}

	ngOnInit(){
		console.log('search-index.component cargado correctamente!!');
		this.getServicios();
	}

	getServicios(){
		this._servicioService.getServicios().subscribe(
			response => {
				if(response.status == 'success'){
					this.servicios = response.servicios;
				}
			},
			error => {
				console.log(error);
			}
		);
	}

	
	deleteServicio(id){
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