import random 
creator: address
odds: uint256
randomnumber: uint256
playersTurn: uint256
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
def random() -> uint256:
    self.randomnumber = random.randint(0, odds)
    return randomnumber
    
