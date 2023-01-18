// SPDX-License-Identifier: MIT
////////////////////////Student Mark Checker and If one passes teacher recieves 1 ETHER gift\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
pragma solidity ^0.8;
contract real1{
    uint[] private  a=[34,53,64,76,22,21,41,36,78,92];
    //To Address whom You want to see
    address to=0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    address ow;
    constructor(){
        ow=msg.sender;
    }
    uint b;
    uint public f=0;
    function get() public view  returns(uint){
       
        return a.length;
        
        

    }
    function deposit() public payable {
       require(msg.value==a.length*1000000000000000000 && address(this).balance==10 ether,"Your Fund is Completed cannot add more!!!");
    }
    
   function process()public payable {
       f=0;
       for(uint i=0;i<a.length;i++){
           if(a[i]>40){
               f++;

           }
       }
       payable(to).transfer(f*1000000000000000000);
       if(address(this).balance!=0){
           payable(ow).transfer(address(this).balance);
       }


   }
}