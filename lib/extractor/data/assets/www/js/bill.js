store.register({
      id: "japan1",
      alias: "100 coins",
      type: store.CONSUMABLE
    });


var product = store.get("japan1");

// method called when the screen showing your purchase is made visible
    function show() {
        render();
        store.when("japan1").updated(render);
    }

    function render() {

        // Get the product from the pool.
        var product = store.get("japan1");

        if (!product) {
            $el.html("");
        }
        else if (product.state === store.REGISTERED) {
            $el.html("<div class=\"loading\" />");
        }
        else if (product.state === store.INVALID) {
            $el.html("");
        }
        else {
            // Good! Product loaded and valid.
            $el.html(
                  "<div class=\"title\">"       + product.title       + "</div>"
                + "<div class=\"description\">" + product.description + "</div>"
                + "<div class=\"price\">"       + product.price       + "</div>"
            );

            // Is this product owned? Give him a special class.
            if (product.owned)
                $el.addClass("owned");
            else
                $el.removeClass("owned");

            // Is an order for this product in progress? Can't be ordered right now?
            if (product.canPurchase)
                $el.addClass("can-purchase");
            else
                $el.removeClass("can-purchase");
        }
    }

    // method called when the view is hidden
    function hide() {
        // stop monitoring the product
        store.off(render);
    }


store.when("japan1").approved(function(p) {
    alert("you are buying 100 coins")
    p.finish();
});