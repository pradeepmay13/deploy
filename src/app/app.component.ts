import { Component } from '@angular/core';
import { FormGroup, FormControl, FormBuilder, Validators } from '@angular/forms';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  styles:[ `
  		.nav a:active{color:#0ce3ac !important;}
  ` ]
})
export class AppComponent {
  title = 'RoutesProject';
}
