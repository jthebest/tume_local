import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { routing, appRoutingProviders } from './app.routing';

// Componentes
import { AppComponent } from './app.component';
import { LoginComponent } from './components/login/login.component';
import { RegisterComponent } from './components/register/register.component';
import { DefaultComponent } from './components/default/default.component';
import { CarNewComponent } from './components/car-new/car-new.component';
import { CarEditComponent } from './components/car-edit/car-edit.component';
import { CarDetailComponent } from './components/car-detail/car-detail.component';
import { AppRoutingModule } from './app-routing.module';
import { FilterPipe } from './pipes/filter.pipe';

// Bootrstrap
//import { AlertModule, CollapseModule, BsDropdownModule } from 'ngx-bootstrap';
//import { BrowserAnimationsModule } from '@angular/platform-browser/animations';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RegisterComponent,
    DefaultComponent,
    CarNewComponent,
    CarEditComponent,
    CarDetailComponent,
    FilterPipe
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule,
    routing //,
//    AlertModule.forRoot(),
 //   BrowserAnimationsModule,
//    CollapseModule.forRoot(),
 //   BsDropdownModule.forRoot() 
  ],
  providers: [
    appRoutingProviders,
    AppRoutingModule
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
