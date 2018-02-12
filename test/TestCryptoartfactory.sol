pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/CrytoArtFactory.sol";

contract TestCryptoartfactory {
    CrytoArtFactory crytoArtFactory = CrytoArtFactory(DeployedAddresses.CrytoArtFactory());

    function testCreationOfCrytoArt() {
        crytoArtFactory.creatNewCrptoArt("Art 001");
        uint expected = 1;
        
        Assert.equal(crytoArtFactory.ownArtCount(msg.sender), expected, "It should have a length of one");

    }

    function testGetCryptoArtCount() {
        crytoArtFactory.creatNewCrptoArt("Art 002");
        crytoArtFactory.creatNewCrptoArt("Art 003");
        uint expected = 3;

        Assert.equal(crytoArtFactory.getAllArtsCount(), expected, "It should have a length of one");
    
    }
}