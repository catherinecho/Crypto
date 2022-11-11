#import random 
creator: address
odds: uint256
playersTurn: uint256
losers: DynArray[address, 100]
players: DynArray[address, 100]
emptyPlayers: DynArray[address, 100]

@external
def __init__():
    self.creator= msg.sender
    self.odds = 0
    self.playersTurn = 0

@external
def setOdds(oneInThisMany: uint256):
    if self.creator== msg.sender:
        self.odds = oneInThisMany

@external 
def addPlayer (Player: address):
    assert Player not in self.players
    assert Player not in self.losers
    self.players.append(Player)

@internal
def lose (Player: address):
    self.losers.append(Player)    
    self.players= self.emptyPlayers
    
@internal
def random() -> uint256:
    randomnumber: uint256 =  block.number%self.odds
    return randomnumber


@external 
def play():
    num: uint256 = self.random()
    nextplayer: address = self.players[self.playersTurn % len(self.players) + 1]
    if(num == 1):
        self.lose(nextplayer)
    else:
        self.playersTurn = self.playersTurn % len(self.players) + 1
