// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract Funciones {
    
    uint private resultado = 55;

    function Suma(uint numero1, uint numero2) public pure returns (uint){
        return SumaInterna(numero1,numero2);
    }

    function ObtenerResultado() public view returns (uint){
        return resultado;
    }

    function SumaInterna(uint numb1, uint numb2) private pure returns (uint){
        return numb1 + numb2;
    }
}
