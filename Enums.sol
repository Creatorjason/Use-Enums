//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Enums{
    enum Promise{
        succesful,
        pending,
        failed
    }
    Promise public state;
    mapping(Promise => string) public status;

    function get() external view returns(Promise){
        return state ;
    } 
    // function set(Promise _state, string memory _val) external{
    //     state = _state;
    //     status[_state] =  _val;
    // }
     function checkStatus(uint _num) external view returns(string){
         if(get() == _num){
             return status[get()];
         }
     }

    
}
