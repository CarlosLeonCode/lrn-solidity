// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract Events{

    uint[] public numeros;
    string public resultado;

    event NotificacionCondicion(bool condicion);

    constructor(bool condicion){
        if(condicion){
            resultado = "Condicion true";
        }
        else{
            resultado = "Condicion false";
        }

        emit NotificacionCondicion(condicion);

        for(uint iterador; iterador < 10; iterador++){
            numeros.push(iterador);
        }
    }
}
