/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFTs
let nfts = [];

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT(name, artist, description, dateCreated) {
    const nft = {
        name: name,
        artist: artist,
        description: description,
        dateCreated: dateCreated
    };
    nfts.push(nft);
}

// create a "loop" that will go through an "array" of NFTs
// and print their metadata with console.log()
function listNFTs() {
    nfts.forEach((nft, index) => {
        console.log(`NFT ${index + 1}:`);
        console.log(`  Name: ${nft.name}`);
        console.log(`  Artist: ${nft.artist}`);
        console.log(`  Description: ${nft.description}`);
        console.log(`  Date Created: ${nft.dateCreated}`);
    });
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
    return nfts.length;
}

// call your functions below this line

// Mint some NFTs
mintNFT("Karthikeya", "Tallapneni", "A cute crypto kitty", "2024-01-01");
mintNFT("Athul", "sharma", "A cool pixel punk", "2024-02-15");
mintNFT("Pravesh", "Kumar ", "A rare pepe meme", "2024-03-30");

// List all NFTs
listNFTs();

// Print the total number of NFTs
console.log("Total NFTs minted: " + getTotalSupply());
