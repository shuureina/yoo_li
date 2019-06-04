$(function() {

    $.ajax({
        type: "get",
        url: "../../lib/head.php",
        dataType: "json",
        success: function(response) {

            var productlist = $('.subnav-h');
            var template = '';
            response.forEach(function(elm, i) {

                var pic = JSON.parse(elm.pic);
                var template = `
                <dl>
                <dt>${elm.dt}</dt>
                <dd>
                    <a href="./productList.html" title="${elm.title}"> <img src="${pic[0].src}" alt="${pic[0].title}"><span>${elm.title}</span></a>
                </dd>
                <dd>
                <a href="./productList.html" title="${elm.title}"> <img src="${pic[0].src}" alt="${pic[0].title}"><span>${elm.title}</span></a>
            </dd>
            <dd>
            <a href="./productList.html" title="${elm.title}"> <img src="${pic[0].src}" alt="${pic[0].title}"><span>${elm.title}</span></a>
        </dd>
             
            </dl>
          
            `;
                productlist.append(template);
            })

        }
    });
})