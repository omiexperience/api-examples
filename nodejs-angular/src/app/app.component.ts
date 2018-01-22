import { Component } from '@angular/core';
import { ClienteService } from './cliente.service';
import { Cliente } from './cliente';

@Component({
  selector: 'my-app',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [ClienteService]
})

export class AppComponent {
  constructor(private clienteService: ClienteService) {}
  
  clientes: Cliente[] = [];
  
  ngOnInit() {
    this.loadClientes();
  }

  loadClientes() {
    this.clienteService.getClientes().then(clientes => this.clientes = clientes);
  }
}