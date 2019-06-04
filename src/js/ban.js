$(function() {

    $.ajax({
        type: "get",
        url: "../../lib/ban.php",
        dataType: "json",
        success: function(response) {

            var productlist = $('.slider-b');
            var template = '';
            response.forEach(function(elm, i) {

                var pic = JSON.parse(elm.pic);
                var template = `
                <a href="./productList.html" title="${elm.title}>
                <img src="${pic[0].src}" alt="${elm.title}">
            </a>
        
            `;
                productlist.append(template);
            })

        }
    });
})