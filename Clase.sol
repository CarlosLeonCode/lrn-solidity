// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract Clase{

    struct Alumno{
        string nombre;
        uint documento;
    }

    // Array de tipo Alumno 
    Alumno[] public alumnos;

    constructor(){
        alumnos.push(
            Alumno({ nombre: "Carlos", documento: 123456 })
        );
    }
}
