import CryptoPoops from 0x06
import NonFungibleToken from 0x05

transaction(destination: Address, nftName: String, nftFavouriteFood: String, nftLuckyNumber: Int) {

  prepare(signer: AuthAccount) {

    let minterRef = signer.borrow<&CryptoPoops.Minter>(from: /storage/Minter)
                    ?? panic("This signer is not the one who deployed the contract.")

    let destinationCollection = getAccount(destination)
                                  .getCapability(/public/MyCollection)
                                  .borrow<&CryptoPoops.Collection>()
                                  ?? panic("The destination does not have a Collection.")

    let newNFT <- minterRef.createNFT(name: nftName, favouriteFood: nftFavouriteFood, luckyNumber: nftLuckyNumber)

    destinationCollection.deposit(token: <- newNFT)

    log("Mint successfull")
  }
}
