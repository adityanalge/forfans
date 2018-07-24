pragma solidity ^0.4.0;

contract ForFans{
    
    //Declare all the basic variables
    uint no_of_teams;
    uint no_of_upper_teams;
    uint no_of_lower_teams;
    
    uint no_of_tickets;
    uint no_of_upper_tickets;
    uint no_of_lower_tickets;
    
    uint cost_of_each_ticket;
    uint commision;
    
    function return_half(uint x) internal pure returns(uint){
        return x/2;
    }
    
    function set_no_of_teams(uint teams) public {
        no_of_teams = teams;

        //Here we divide the teams into two brackets to prevent conflict
        
        no_of_upper_teams = teams/2;
        no_of_lower_teams = teams/2;
    }
    
    /*function get_no_of_teams() public view returns (uint) {
        return no_of_teams;
    }*/
    
    function set_no_of_tickets(uint tickets) public {
        no_of_tickets = tickets;
        
        //We divide total available tickets into two parts and allocate it to each bracket of teams
        
        no_of_upper_tickets = tickets/2;
        no_of_lower_tickets = tickets/2;
    }
    
    /*function get_num_of_tickets() public view returns (uint) {
        return no_of_tickets;
    }*/
    
    function set_cost_of_each_ticket(uint cost) public {

    	//This is the cost per ticket

        cost_of_each_ticket= cost;
    }
    
    /*function get_cost_of_each_ticket() public view returns(uint){
        return cost_of_each_ticket;
    }*/
    
    function set_commision_per_ticket(uint comm) public{
        
    	//This is the profit in dollares we make on each ticket

        commision = comm;
    }
    
    /*function get_commision() public view returns (uint) {
        return commision;
    }*/

    function get1_old_revenue() public view returns (uint){
        return no_of_tickets * cost_of_each_ticket * commision;
    }
    
    function get2_new_revenue() public view returns (uint){
        return ((no_of_upper_tickets*cost_of_each_ticket*no_of_upper_teams*commision) + (no_of_lower_tickets*cost_of_each_ticket*no_of_lower_teams*commision));
    }
    
}