# flow-beginner-module-6

This a project demonstrating the creation of custon NFT collection. The NFTs have values such as Name, Favourtie Food and lucky number.

## Description

The project has 2 contracts, 3 transactions and 3 script codes for creating a custom NFT collection.

### Contracts

The "contract1.cdc" file contains a customized NFT collection Cadence contract named CryptoPoops, following the NFT interface standard defined in "contract2.cdc."

### Transaction codes

1. "mintNFT.cdc" transaction script mints a new NFT with specified metadata, deposits it into the recipient's CryptoPoops.Collection (if the signer has privileges and the recipient has a collection), and logs the minting success.

2. "createNFT.cdc" transaction script creates and stores a CryptoPoops.Collection in the signer's account storage, exposing only deposit and getIDs functions, and logs the success of the collection creation.

3. "createcollection.cdc" transaction script allows an authenticated account (signer) to interact with their CryptoPoops.Collection by borrowing a reference, enabling operations like depositing NFTs or retrieving NFT IDs.

### Scripts

1. "script1.cdc," a reference to a specific NFT (identified by _id) is retrieved from the user's public CryptoPoops.Collection using borrowAuthNFT, if it exists.

2. "script2_collection.cdc," NFT IDs from all collections owned by a user's address are retrieved and organized by collection type, returning the result as a mapping of types to arrays of IDs.

3. "script3_multidata.cdc," metadata (name) for a specific NFT (identified by id) is retrieved from a CryptoPoops collection held by a given account.


## Flow Playground link

```
https://play.flow.com/060e1d04-1ac3-4cd1-8dc5-eba2ad218746?type=tx&id=32cb6b78-28a8-4b1b-94e9-e83a9cedc242
```

## Executing the project

1. Deploy The NonFungibleToken contract(i.e., contract2) on 0x05 signer

2. Then deploy Cryptopoops contract(i.e., contract1) on 0x06 signer
   
3. Sign the first transaction (createcollection.cdc) with address 0x06 and send it.

4. Sign the second transaction (createNFT.cdc) with address 0x06 and send it

5. Sign the third transaction (mintNFT.cdc) with address 0x06 and send it with the below parameters:

recipient = 0x06

name: (Enter Your Name)
favouritefood: (Enter your favourite food)
luckynumber: (Enter your lucky number)

5. Execute the script1 with the following parameters:

User = 0x06

id = 1

## Authors

Ashwath R

ashwathraju85@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details




