import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.css'],
  styles:[ `
  		input.ng-invalid{border-left:5px solid red;}
  		input.ng-valid{border-left:5px solid green;}
  ` ]
})
export class ContactComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

  userForm=new FormGroup({
  	name: new FormControl("Pradeep", [Validators.required, Validators.minLength(4), Validators.maxLength(10)]),
  	email: new FormControl(),
  	address: new FormGroup({
  		street: new FormControl(),
  		city: new FormControl(),
  		postalcode: new FormControl(null, [Validators.required, Validators.pattern('^[1-9][0-9]{4}$')]),
  	}),
  })
  onSubmit(){
  	console.log(this.userForm.value);
  }
}
