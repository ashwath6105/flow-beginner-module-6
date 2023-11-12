import CryptoPoops from 0x06
import NonFungibleToken from 0x05

transaction() {
  prepare(transactionSigner: AuthAccount) {
    // Store a `CryptoPoops.Collection` in our account storage.
    transactionSigner.save(<- CryptoPoops.createEmptyCollection(), to: /storage/MyCollection)
    
    // NOTE: We expose `&CryptoPoops.Collection{CryptoPoops.CollectionPublic}`, which 
    // only contains `deposit` and `getIDs`.

    // Correct the resource interface to be publicly available
    transactionSigner.link<&CryptoPoops.Collection>(/public/MyCollection, target: /storage/MyCollection)
    log("Created Collection Successfully")
  }
}

