#import random 
creator: address
odds: uint256
randomnumber: uint256
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

@external 
def lose (Player: address):
    self.losers.append(Player)    
    self.players= self.emptyPlayers
    
#@external
#def random() -> uint256:
#    self.randomnumber = random.randint(0, odds)
#    return randomnumber
    
