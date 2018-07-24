# forfans

A streamlined Smart Contract solution to allocate tickets to fans for Knockout tournament games using Blockchain.

## What is FORFANS?

The idea behind FORFANS is simple. It can be used for tournaments using the Knockout format.

Traditionally, one ticket would be sold to just one individual. Using FORFANS, we can sell the same
ticket to multiple individuals depending on the team they are supporting. Only the individual whose team
makes it to the game is allowed to redeem the ticket.

Since there would be two teams in the game, this process has to be divided into two parts before applying.

## How does it work?

For the purpose of explanation, assume we have 1000 tickets to sell for a Knockout tournament that has
16 teams. Traditionally, we would sell one ticket to one person and that would be it. Using FORFANS,
we can sell one ticket to multiple individuals. Here’s how,
* Divide the 16 teams that make it to the Knockout stage into two parts i.e. Upper Bracket & Lower
Bracket.
* Allocate 500 of the available 1000 tickets to the Upper Bracket and the remaining 500 to the Lower
Bracket.
* Instead of selling 1 ticket to one person, sell it to 1 supporter of each team in the Upper Bracket.
* Repeat the same step with the lower bracket.
* From the 8 teams in upper bracket and 8 in lower bracket, only one team will advance to the final
each.
* The supporters whose team reaches the finals are allowed to redeem their ticket and the rest are
refunded the amount they paid for the ticket – the processing fee.

Where initially we would have made a profit of 1000 * processing fee, we can now make a net profit of
1000 * processing fee * 16. Thus, increasing the profit 16 times. And this is just for the Finals. We can
use the same method for Semis, Quarters and Round of 16 games.

## Files included in the project
