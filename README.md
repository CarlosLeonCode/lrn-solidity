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


## Error handling

We can use:
commissions
- Revert: This one rever all changes made previously and interrupt the process.
- Require: This one allows to define a validation  and a message instead of in case the validation fails.

### Example:

```solidity
// contract Errores.sol

require(msg.sender == propietario, "El sender no es el mismo que el propieatario :(");
```

<hr>

## Types of memory

- Storage: It's a persisted storage. This is the most expensive.
- Memory: It's a temporal storage. It's most cheap.
- Calldata: it's a memory space use it when we pass parameters inside functions.
> Always we are using storage, but if we can use memory, we've to specify it.

### Example:

```solidity
constructor(string memory palabra){
    nombre = palabra;
}
```
## Gas and commissions

- Gas: It's an unit of measurement. This one indicates the computer use or effor.
- Gas price: This change depending to the offer and demand but its the price that we have to pay for each gas.
- Gas fee: Es la propina para el minero.
> Calculate gas cost: gas * gas price

## Transfers | Cash out

We have three methods to do transfers from smart contract.

- Send: Send an ammount to an address but if the transaction is failed, then return a false as a response.
- Tranfer: Send an ammount to an address but if the transaction is failed, this one interrumpt the process.
- Call: Send an ammount to an address but if the transaction is failed, this return operation result.
> Payable means that the address is gonna receive payments. As well these one has a gas limit by default. We can custome gas limit with call function.
Send and Transfer require that the addresses will be payable type.

## Receive Eth

We have following functions:

- Receive: This is optional and it's executed when a transfer was received. This doesn't receive parameters.
- Fallback: This is optional and it's executed when a transfer was received. This receive parameters.
- Payable function: 

### Example:

```solidity
receive() external payable {
  balances[msg.sender] += msg.value;
}

fallback() external payable {}

function recibirSaldo(uint numero) public payable {
  saldoEnviado = msg.value;
  
  uint monto = numero;
}
```

<hr>

## Using libraries

We import them using keyword **import**, its the same to import contracts.
Libraries doesn't have a state, just functions because it is a utility.

### Example:

```solidity
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
```

## Inheritance

It's works exact as POO.
We use Interfaces and contracts to inheritance.

- Example in Herencia.sol
