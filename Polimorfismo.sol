// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

import "./Interface.sol";

contract Polimorfismo {
    
    function multyDesdeImplementacion(uint numero1, uint numero2, address direccionContrato) 
        public returns (uint){
        Multiply interfaceInstance = Multiply(direccionContrato);
        return interfaceInstance.mul(numero1, numero2);
    }
}
