import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
//import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
//import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule }    from '@angular/http';
//import { routes } from './app.router';
import { AppComponent } from './app.component';
import { AppRoutingModule } from './app-routing.module';
//import { ServicesComponent } from './services/services.component';
//import { ContactComponent } from './contact/contact.component';
//import { MdfFormbuilderComponent } from './mdf-formbuilder/mdf-formbuilder.component';
//import { EmployeeListComponent } from './employee-list/employee-list.component';
import { SidebarComponent } from './sidebar/sidebar.component';
import { routingComponent } from './app-routing.module';

@NgModule({
  declarations: [
    AppComponent,
    routingComponent,
    SidebarComponent,
  ],
  imports: [
    BrowserModule,
    //routes,
    FormsModule,
    ReactiveFormsModule,
    HttpModule,
    AppRoutingModule
    //CommonModule
  ],
  providers: [],
  bootstrap: [AppComponent],
  //schemas: [ CUSTOM_ELEMENTS_SCHEMA ]
})
export class AppModule { }
