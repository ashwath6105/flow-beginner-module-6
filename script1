import CryptoPoops from 0x06
import NonFungibleToken from 0x05

pub fun main(userAddress: Address, tokenId: UInt64): &NonFungibleToken.NFT {

    // Get a reference to the user's public Collection
    let userCollectionRef = getAccount(userAddress)
        .getCapability(/public/MyCollection)
        .borrow<&CryptoPoops.Collection>()
        ?? panic("The recipient does not have a Collection.")

    let tokenIds = userCollectionRef.getIDs()
    
    let selectedNFT = userCollectionRef.borrowAuthNFT(id: tokenIds[tokenId])

    return selectedNFT
}

