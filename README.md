# Structure
- pragma, define version compiler
- contract, define block contract logic. A file could have multiple contracts but it's not a good practice

### Example:

```solidity
pragma solidity >= 0.7.0 < 0.9.0;

contract Estructura {

    constructor(){

    }

}
```

## Data types

- int: Números enteros.
- uint: Números enteros sin signo.
> There's not decimals in solidity
- Bool: Boolean values
- Address: Almacenan direcciones de Ethereum, es decir transacciones o referencias a cuentas u otros contratos.
- String: Represent texts.
- Bytes: Represent bytes string without formats.

## Variables scope

- Local: They are temporal to use them inside code scope.
- State: This persist inside all contract flow, inclusive after.
- msg: Variable global, Valores de mensajes.
- tx: Variable global, Valores de transacción.
- block: Variable global, relacionado con bloque de ejecución.

### Example:

```solidity
// contract Estructura.sol

int cantidad;
uint cantidadSinSigno;
address direccion:
bool firmado;
```

## Structs & Arrays

- Structs: It's a complex structure, we can save multiple data with diferentes sort of entity, like arrays, integers, strings, etc...
- Array: Save strings of elements with the same kind of data. These could be static or dynamic.

### Example:

```solidity
// contract Clase.sol

struct Alumno{
    string nombre;
    uint documento;
}

// Array de tipo Alumno 
Alumno[] public alumnos;

// Creating
Alumno({ nombre: "Carlos", documento: 123456 })
```

## Mappings and enums

- Mappings is a way to save data key-value
- Enums allows to us define custom values, usually use it with status.

### Example:

```solidity
// contract Saldo.sol

mapping(address => uint) public balance;
// ----
enum Estado { Iniciado, Finalizado }
Estado public estadoDelContrato;
```

## Control structures

- if/else
- For
- while
- Do - While

## Events

Contracts doesn't notify what happends inside them. To do this we should use events to can notify something abroad.
**Each event uses gas!**

### Example:

```solidity
// contract Events.sol

// Defining an event
event NotificacionCondicion(bool condicion);

// Using and event
emit NotificacionCondicion(condicion);

// Response in logs
"event": "NotificacionCondicion",
"args": {
    "0": false,
    "condicion": false
}
```

## Functions
Are code pieces that we can reuse them.

encapsulation types:

- public, we can access from anywhere
- private, we can access from the same contract
- internal, we can access from the same and its derivated contracts.
- external, we can access only from outside of the contract

types of functions:

- View: it's only read function. The contract does not change.
- Pure: We couldn't access to contract variables.

### Example:

```solidity
// contract Funciones.sol

function Suma(uint numero1, uint numero2) public pure returns (uint){}

function ObtenerResultado() public view returns (uint){}
```

## Modificators

It's like a before hook that we can use before execute some function. This is used to share logic or to restrict access. It's a function as well.

### Example:

```solidity
// contract Modificadores.sol

// Definition
modifier EsPropietario(){}

// Use of modificator
function Suma(uint numero1, uint numero2) public view EsPropietario() returns (uint){}
```
