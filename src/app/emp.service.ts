import { Injectable } from '@angular/core';
import { Http, Response, Headers, RequestOptions } from '@angular/http';
import {Observer} from 'rxjs/Observer';
import { Observable } from 'rxjs/Observable';
import "rxjs/add/operator/map";
import "rxjs/add/operator/catch";
import "rxjs/add/observable/throw";
@Injectable()
export class EmpService {
	private _url:string="http://10.213.172.119/json/fetchdata.php";

	constructor(private _http: Http) { }
	getEmployees(){
		var headers = new Headers();
	   	headers.append('Content-Type','application/x-www-form-urlencoded');
	   	//headers.append('Authorization', 'Basic ' + btoa('username:password')); 

		return this._http.get(this._url)
		.map((response:Response) => response.json())
		.catch(this._errorHandler);
	}
	_errorHandler(error:Response){
		console.error(error);
		return Observable.throw(error || "Server Error");
	}
}
