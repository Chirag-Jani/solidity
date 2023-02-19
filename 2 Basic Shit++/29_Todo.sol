// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract Todolist {
    struct Todo {
        string text;
        bool isCompleted;
    }

    Todo[] todos;

    function create(string calldata _text) external {
        todos.push(Todo{text: _text, isCompleted: false});
    }

    function update(uint256 index, string calldata newtext) external {
        // uses less gas when less fields are needed to updated
        todos[index].text = newtext;

        // when there are multiple fields to update or update one field multiple times, use this (uses less gas)
        // Todo storage todo = todos[index];
        // todo.text = newtext;
    }

    // you can write more functions for practice

    // while reading data, it is better to use storage to get struct and then returns at it has one less copy to do
    // while using memory, it copies the value in the memory once, and second time while returning the value
    // whereas if we use storage, it will only copy once while returning
}
