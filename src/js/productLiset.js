$(function() {

    $.ajax({
        type: "get",
        url: "../../lib/getproduct.php",
        dataType: "json",
        success: function(response) {
            // console.log(response);
            var productlist = $('section');
            var template = '';
            response.forEach(function(elm, i) {
                // console.log(elm.pic);
                var pic = JSON.parse(elm.pic);
                var template = `
                    <ul class="productlist">
                    <li class="item">
                        <a href="product.html?id=${elm.id}">
                            <div class="p-img">
                                <img src="${pic[0].src}" alt="${pic[0].title}">
                            </div>
                            <div class="p-title">
                                <a href="product.html"> ${elm.title}</a>
                            </div>
                            <div class="p-price">
                                <span>￥</span>${elm.price}
                            </div>
                        </a>
 </li>
 </ul>
                    `;
                productlist.append(template);
            })

        }
    });
})