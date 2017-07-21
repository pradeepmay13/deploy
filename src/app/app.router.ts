import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { AboutComponent } from './about/about.component';
import { ServicesComponent } from './services/services.component';
import { ContactComponent } from './contact/contact.component';
import { MdfFormbuilderComponent } from './mdf-formbuilder/mdf-formbuilder.component';
import { EmployeeListComponent } from './employee-list/employee-list.component';


export const router: Routes = [
	{ path:'', redirectTo: 'about', pathMatch: 'full' },
	{ path:'about', component: AboutComponent },
	{ path:'services', component: ServicesComponent },
	{ path:'contact', component: ContactComponent },
	{ path:'formBuilder', component: MdfFormbuilderComponent },
	{ path:'employeeList', component: EmployeeListComponent },
];
export const routes: ModuleWithProviders = RouterModule.forRoot(router);


