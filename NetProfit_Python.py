# -*- coding: utf-8 -*-
"""
Created on Fri Jul 20 10:31:30 2018

@author: adityanalge
"""

def allocate_half(x):
    return int(x//2)
    
def num_teams():

    while True:

        teams = input("Enter Number of Teams :\n")
        
        try:
            teams = int(teams)
            return teams
            break
        except ValueError:
            print("\nThat's not a valid Input! Try Again")

def num_tickets():
    
    while True:
    
        tickets = input("Enter Number of Tickets Available for Sale\n")
    
        try:
            tickets = int(tickets)
            return tickets
            break
        except ValueError:
            print("\nThat's not a Valid Input! Try Again")

def ticket_cost():
    
    while True:
    
        ticket_cost = input("Enter Cost of Each Ticket\n")
    
        try:
            ticket_cost = int(ticket_cost)
            return ticket_cost
            break
        except ValueError:
            print("\nThat's not a valid Input! Try Again")
            
def old_profit(a,b):
    return a * b * 0.1

def new_profit(a,b,c):
    return a* b * c * 0.1

if __name__ == "__main__":
    
    total_teams = num_teams()
    total_tickets = num_tickets()
    ticket_cost = ticket_cost()

    teams_upper = allocate_half(total_teams)
    teams_lower = allocate_half(total_teams)
    
    tickets_upper = allocate_half(total_tickets)
    tickets_lower = total_tickets - tickets_upper

    old_profit = old_profit(total_tickets,ticket_cost)
    new_profit = new_profit(tickets_upper,ticket_cost,allocate_half(total_teams)) + new_profit(tickets_lower,ticket_cost,allocate_half(total_teams))
    
    print(old_profit)
    print(new_profit)