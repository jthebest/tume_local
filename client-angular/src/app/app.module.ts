import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
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
import { NavHeaderComponent } from './components/nav-header/nav-header.component';
import { CarouselIndexComponent } from './components/carousel-index/carousel-index.component';
import { MultiservicesDropdownComponent } from './components/multiservices-dropdown/multiservices-dropdown.component';
import { MultiservicioschekComponent } from './components/multiservicioschek/multiservicioschek.component';
import { AgmComponent } from './components/agm/agm.component';
import { AgmCoreModule } from '@agm/core';
import { SerachIndexComponent } from './components/serach-index/serach-index.component';
import { SerachResultComponent } from './components/serach-result/serach-result.component';
import { GeneralComponent } from './components/tools/general/general.component';
import { FooterComponent } from './components/footer/footer.component';

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
    NavHeaderComponent,
    CarouselIndexComponent,
    MultiservicesDropdownComponent,
    MultiservicioschekComponent,
    AgmComponent,
    SerachIndexComponent,
    SerachResultComponent,
    GeneralComponent,
    FooterComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    ReactiveFormsModule,
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
    AppRoutingModule,
    GeneralComponent
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
