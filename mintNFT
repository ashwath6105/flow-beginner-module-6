import CryptoPoops from 0x06
import NonFungibleToken from 0x05

transaction(destination: Address, nftName: String, nftFavouriteFood: String, nftLuckyNumber: Int) {

  prepare(signer: AuthAccount) {
    // Get a reference to the `Minter`
    let minterRef = signer.borrow<&CryptoPoops.Minter>(from: /storage/Minter)
                    ?? panic("This signer is not the one who deployed the contract.")

    // Get a reference to the `destination`s public Collection
    let destinationCollection = getAccount(destination)
                                  .getCapability(/public/MyCollection)
                                  .borrow<&CryptoPoops.Collection>()
                                  ?? panic("The destination does not have a Collection.")

    // Mint the NFT using the reference to the `Minter` and pass in the metadata
    let newNFT <- minterRef.createNFT(name: nftName, favouriteFood: nftFavouriteFood, luckyNumber: nftLuckyNumber)

    // Deposit the NFT in the destination's Collection
    destinationCollection.deposit(token: <- newNFT)

    log("Mint successfull")
  }
}
