// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Structs {
    // syntax to define
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car public car; // as state variable
    Car[] public cars; // array
    mapping(address => Car[]) public carsByOwner; // integrating multiple types

    function example() external {
        // order mandatory
        Car memory toyota = Car("Toyota", 1990, msg.sender);

        // key-value pairs (order not mandatory)
        Car memory lambo = Car({model: "Lambo", owenr: msg.sender, year: 1980});

        // with default value and later updating
        Car memory tesla;
        tesla.model = 2001;
        tesla.model = "Modle X";
        tesla.owner = msg.sender;

        // adding to cars array
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        // initialization and pushing directly
        cars.push(Car("Ferrari", 2002, msg.sender));

        // getting value
        Car memory _car = cars[0]; // getting 1st car in read format
        _car.year = 2023; // will not modify as it is in the memory

        Car storage _car2 = cars[0];
        _car2.year = 2023; // will update

        // to reset/delete value
        delete _car2.owner; // will reset the owenr to zero address as it is default for address type

        delete cars[2]; // will reset the whole struct
    }
}
