import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { routing, appRoutingProviders } from './app.routing';
import { AppRoutingModule } from './app-routing.module';
import { FilterPipe } from './pipes/filter.pipe';
import { NgMultiSelectDropDownModule } from 'ng-multiselect-dropdown';


// Componentes
import { AppComponent } from './app.component';
import { LoginComponent } from './components/login/login.component';
import { RegisterComponent } from './components/register/register.component';
import { DefaultComponent } from './components/default/default.component';
import { CarNewComponent } from './components/car-new/car-new.component';
import { CarEditComponent } from './components/car-edit/car-edit.component';
import { CarDetailComponent } from './components/car-detail/car-detail.component';
import { NavIndexComponent } from './components/nav-index/nav-index.component';
import { CarouselIndexComponent } from './components/carousel-index/carousel-index.component';
import { MultiselectDropdownComponent } from './components/multiselect-dropdown/multiselect-dropdown.component';
import { AgmComponent } from './components/agm/agm.component';
import { AgmCoreModule } from '@agm/core';

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
    FilterPipe,
    NavIndexComponent,
    CarouselIndexComponent,
    MultiselectDropdownComponent,
    AgmComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule,
    routing,
    AgmCoreModule.forRoot({
      // please get your own API key here:
      // https://developers.google.com/maps/documentation/javascript/get-api-key?hl=en
      apiKey: 'AIzaSyA9y9Vz5hHI-eFzckvkuBfr7kh1gRby1NE'
    }),
    NgMultiSelectDropDownModule.forRoot() //,
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
