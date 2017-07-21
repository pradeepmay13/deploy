import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
@Component({
  //selector: 'app-employee-detail',
  template: '<h3>Your Name is : {{userId}}</h3>',
  styleUrls: ['./employee-list.component.css']
})
export class EmployeeDetailComponent implements OnInit {
  
  public userId;
  constructor(private route:ActivatedRoute){}
	
  ngOnInit(){
    let id=this.route.snapshot.params['id'];
    this.userId=id;
  }

}