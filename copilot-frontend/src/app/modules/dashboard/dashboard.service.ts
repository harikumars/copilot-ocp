import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class DashboardService {

//create getTrades method with Observable of http get
getTrades() : Observable<any> {
  return this.http.get('/trades/getAll');
}

//create constructor wit hhttp client
constructor(private http: HttpClient) { }

}
