from omie import *


exemplo = Omie("EmpresaTeste").ListarClientes

exemplo.registros_por_pagina = 2
exemplo.pagina = 5

exec = exemplo.executar()

print(exec)