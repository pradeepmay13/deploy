import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { EmployeeService } from '../employee.service';
import { EmpService } from '../emp.service';
@Component({
  selector: 'app-employee-list',
  templateUrl: './employee-list.component.html',
  styleUrls: ['./employee-list.component.css'],
  providers:[ EmployeeService, EmpService ],
})
export class EmployeeListComponent implements OnInit {

	employees=[];
  employeesData=[];
  errorMsg:string;
	constructor(private _empService:EmpService,private _employeeService:EmployeeService, private router:Router) { 

	}
  	ngOnInit() {
  		this.employees=this._employeeService.getEmployees();
      this._empService.getEmployees()
      .subscribe(resEmployeeData => this.employeesData = resEmployeeData,
                  resEmployeeError=>this.errorMsg=resEmployeeError);
    }
    onSelect(user){
      this.router.navigate(['/employeeList',user.id])
    }
}
