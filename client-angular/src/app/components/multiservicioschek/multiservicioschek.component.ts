import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { User } from '../../models/user';
import { UserService } from '../../services/user.service';
import { Servicio } from '../../models/servicio';
import { ServicioService } from '../../services/servicio.service'; 


@Component({
  selector: 'app-multiservicioschek',
  templateUrl: './multiservicioschek.component.html',
  styleUrls: ['./multiservicioschek.component.css'],
  providers: [UserService, ServicioService]
})
export class MultiservicioschekComponent implements OnInit {
  
	public title: string;
	public cars: Array<Servicio>;
	public token;

	constructor(
		private _route: ActivatedRoute,
		private _router: Router,
		private _userService: UserService,
		private _carService: ServicioService
	){
		this.title = 'Inicio';
		this.token = this._userService.getToken();
	}


  ngOnInit() {
	console.log('default.component cargado correctamente!!');
	this.getServicios();
  }

  
	getServicios(){
		this._carService.getServicios().subscribe(
			response => {
				if(response.status == 'success'){
					this.cars = response.cars;
				}
			},
			error => {
				console.log(error);
			}
		);
	}



	deleteServicio(id){
		this._carService.delete(this.token, id).subscribe(
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