import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, FormBuilder, Validators } from '@angular/forms';
@Component({
  selector: 'app-about',
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.css']
})
export class AboutComponent implements OnInit {
  	constructor() { }
  	heroForm  = new FormGroup ({
    	name: new FormControl('', [<any>Validators.required, <any>Validators.minLength(5)]),
    	email: new FormControl('', [<any>Validators.required, <any>Validators.minLength(5)]),
    	age: new FormControl('', [<any>Validators.required]),
    	gender: new FormControl('Male', [<any>Validators.required])
  	});
  	ngOnInit() {
	   
  	}
  	onSubmit(){
  		console.log(this.heroForm.value);
  	}

}
