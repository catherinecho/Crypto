
creator: address
odds: uint256
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
    
