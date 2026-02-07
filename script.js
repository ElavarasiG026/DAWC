let cartCount = 0;

function addToCart() {
    cartCount++;
    alert("Item added to cart! Total items: " + cartCount);
}

document.getElementById("searchBox").addEventListener("keyup", function () {
    console.log("Searching for:", this.value);
});