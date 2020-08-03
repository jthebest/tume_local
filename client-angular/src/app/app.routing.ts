import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

// Componentes
import { LoginComponent } from './components/login/login.component';
import { RegisterComponent } from './components/register/register.component';
import { DefaultComponent } from './components/default/default.component';

import { MultiservicesDropdownComponent } from './components/multiservices-dropdown/multiservices-dropdown.component';
import { SerachIndexComponent } from './components/serach-index/serach-index.component';
import { CarouselIndexComponent } from './components/carousel-index/carousel-index.component';



import { CarNewComponent } from './components/car-new/car-new.component';
import { CarEditComponent } from './components/car-edit/car-edit.component';
import { CarDetailComponent } from './components/car-detail/car-detail.component';

const appRoutes: Routes = [
	//{path:'', component: DefaultComponent},
	//	{path:'', component: MultiservicesDropdownComponent},
	{ path: '', 
		children: [
			{ path: '', outlet: 'seccion1', component: CarouselIndexComponent },
			{ path: '', outlet: 'seccion2', component: MultiservicesDropdownComponent },
		]
	},
	{ path: 'serach-index', component: SerachIndexComponent },
	//{path:'inicio', component: DefaultComponent},
	{ path: 'login', component: LoginComponent },
	{ path: 'logout/:sure', component: LoginComponent },
	{ path: 'registro', component: RegisterComponent },
	//{path:'inicio', component: MultiservicesDropdownComponent},


	{ path: 'crear-coche', component: CarNewComponent },
	{ path: 'editar-coche/:id', component: CarEditComponent },
	{ path: 'coche/:id', component: CarDetailComponent },

	//	{path:'**', component: DefaultComponent},
	{ path: '**', component: SerachIndexComponent }
];

export const appRoutingProviders: any[] = [];
export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);