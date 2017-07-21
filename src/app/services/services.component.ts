import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-services',
  templateUrl: './services.component.html',
  styleUrls: ['./services.component.css'],
  styles:[ `
  		input.ng-invalid{border-left:5px solid red;}
  		input.ng-valid{border-left:5px solid green;}
  ` ]
})
export class ServicesComponent implements OnInit {
	//myName="Pradeep";
	constructor() { }

	ngOnInit() {
	}
	onSubmit(value:any){
		console.log(value);
	}
}
