import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/toPromise';
import { Cliente } from './cliente';

@Injectable()
export class ClienteService {
  constructor(private http: Http) { }
  
  getClientes(): Promise<Cliente[]> {
    return this.http.get('/api/clientes')
      .toPromise()
      .then(response => response.json().clientes_cadastro as Cliente[]);
  }
}