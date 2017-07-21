import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
@Component({
  selector: 'app-mdf-formbuilder',
  templateUrl: './mdf-formbuilder.component.html',
  styleUrls: ['./mdf-formbuilder.component.css'],
  styles:[ `
  		input.ng-invalid{border-left:5px solid red;}
  		input.ng-valid{border-left:5px solid green;}
  ` ]
})
export class MdfFormbuilderComponent implements OnInit {

  userForm:FormGroup;
  constructor(private _formBuilder:FormBuilder) { }

  ngOnInit() {
  	this.userForm=this._formBuilder.group({
  		name:['Pradeep',[Validators.required, Validators.minLength(4), Validators.maxLength(10)]],
  		email : [],
  		address:this._formBuilder.group({
  			street:[],
  			city:[],
  			postalcode:[null,[Validators.required, Validators.pattern('^[1-9][0-9]{4}$')]]
  		})
  	})
  }

  /*userForm=new FormGroup({ 
  	name: new FormControl("Pradeep", [Validators.required, Validators.minLength(4), Validators.maxLength(10)]),
  	email: new FormControl(),
  	address: new FormGroup({
  		street: new FormControl(),
  		city: new FormControl(),
  		postalcode: new FormControl(null, [Validators.required, Validators.pattern('^[1-9][0-9]{4}$')]),
  	}),
  })*/
  onSubmit(){
  	console.log(this.userForm.value);
  }
}
