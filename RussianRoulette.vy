#import random 
creator: address
odds: uint256
randomnumber: uint256
playersTurn: uint256
losers: DynArray[address, 100]
players: DynArray[address, 100]
found: bool
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
    self.found = False
    assert Player not in self.players
    assert Player not in self.losers
        
    
#@external
#def random() -> uint256:
#    self.randomnumber = random.randint(0, odds)
#    return randomnumber
    
