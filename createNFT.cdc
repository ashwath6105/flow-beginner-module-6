import CryptoPoops from 0x06
import NonFungibleToken from 0x05

transaction() {
  prepare(transactionSigner: AuthAccount) {

    transactionSigner.save(<- CryptoPoops.createEmptyCollection(), to: /storage/MyCollection)
    transactionSigner.link<&CryptoPoops.Collection>(/public/MyCollection, target: /storage/MyCollection)
    log("Created Collection Successfully")
  }
}

