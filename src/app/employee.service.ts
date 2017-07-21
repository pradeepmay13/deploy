import { Injectable } from '@angular/core';

@Injectable()
export class EmployeeService{

  constructor() { }

  getEmployees(){
  	return [
  		{name:'Pradeep',age:'28',gender:'Male', email:'pradeep@gmail.com'},
	  	{name:'Ajay',age:'30',gender:'Male', email:'Ajay@gmail.com'},
	  	{name:'Setu',age:'28',gender:'Female', email:'Setu@gmail.com'}
  	]
  }

}
