import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Routes, RouterModule } from '@angular/router';
import { AppComponent } from './app.component';
import { AboutComponent } from './about/about.component';
import { ServicesComponent } from './services/services.component';
import { ContactComponent } from './contact/contact.component';
import { MdfFormbuilderComponent } from './mdf-formbuilder/mdf-formbuilder.component';
import { EmployeeListComponent } from './employee-list/employee-list.component';
import { EmployeeDetailComponent } from './employee-list/employee-detail.component';
import { PageNotFound } from './error_pages/page-not-found.component';

const routes: Routes = [
	{ path:'', redirectTo: 'about', pathMatch: 'full' },
	{ path:'about', component: AboutComponent },
	{ path:'services', component: ServicesComponent },
	{ path:'contact', component: ContactComponent },
	{ path:'formBuilder', component: MdfFormbuilderComponent },
	{ path:'employeeList', component: EmployeeListComponent },
	{ path:'employeeList/:id', component: EmployeeDetailComponent },  
  { path:'**', component: PageNotFound }
];


@NgModule({
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  exports:[
  	RouterModule
  ],
  declarations: []
})
export class AppRoutingModule { }
export const routingComponent=[AboutComponent,ServicesComponent, ContactComponent, MdfFormbuilderComponent, EmployeeListComponent,EmployeeDetailComponent,PageNotFound]
