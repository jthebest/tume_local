import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { GLOBAL } from './global';
import { Servicio } from '../models/servicio';


@Injectable({
  providedIn: 'root'
})
export class ServicioService {
  public url: string;
  constructor(
    public _http: HttpClient
  ) {
    this.url = GLOBAL.url;
  }


  create(token, servcio: Servicio): Observable<any> {
    let json = JSON.stringify(servcio);
    let params = "json=" + json;

    let headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded')
      .set('Authorization', token);

    return this._http.post(this.url + 'servicios', params, { headers: headers });
  }

  getServicios(): Observable<any> {
    let headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded');
    return this._http.get(this.url + 'servicios', { headers: headers });
  }

  getServicio(id): Observable<any> {
    return this._http.get(this.url + 'servicios/' + id);
  }

  update(token, servicio, id): Observable<any> {
    let json = JSON.stringify(servicio);
    let params = "json=" + json;

    let headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded')
      .set('Authorization', token);

    return this._http.put(this.url + 'servicios/' + id, params, { headers: headers });
  }

  delete(token, id): Observable<any> {
    let headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded')
      .set('Authorization', token);

    return this._http.delete(this.url + 'servicios/' + id, { headers: headers });
  }


}

