/**
 * 
 */

 $(function() {
    // Make an ajax request to the API
    $.get("https://dummyjson.com/products", function(res) {
      // Loop through the product data
      
      $.each(res.products, function(i, product) {
		  console.log(product);
       if(product.category=="laptops" || product.category=="smartphones"){
        var productElement = `
          <div class="product-card">
            <img class="product-image" src="${product.thumbnail}"/>
            <h3 style="color:orange;">${product.title}</h3>
            <p>Price: ${product.price}</p>
            <p>Rating: ${product.rating}/5</p>
            <a class="buyNow" href="NewFile1.jsp">BuyNow</a>
          </div>
        `;
        }
        // Append the product element to the container element
        $(".product-container").append(productElement);
      });
        
    });
  });