// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract Errores {
    
    address private propietario;

    constructor(){
        propietario = msg.sender;
    }

    function Suma(uint numero1, uint numero2) public view EsPropietario() returns (uint){
        return numero1 + numero2;
    }

    modifier EsPropietario(){
        require(msg.sender == propietario, "El sender no es el mismo que el propieatario :(");

        // This indicates that if is a owner, can continue with function flow
        _;
    }
}
