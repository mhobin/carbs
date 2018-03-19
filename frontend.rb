require 'unirest'

response = Unirest.get("http://localhost:3000/v1/carbs")

# response = Unirest.post("http://localhost:3000/v1/carbs", parameters: {
#   name: "cake",
#   description: "sweet bread and frosting",
#   image_url: "http://weddingcakesuppliers.info/wp-content/uploads/cakes-fotos-images-of-cakes-best-25-drip-cakes-ideas-on-pinterest-beautiful.jpg",
#   price: 20
#   }
#   )

response = Unirest.patch("http://localhost:3000/v1/carbs/1",
  parameters:{
    image_url: "http://www.chicago-toast.com/img/big-toast-img.png"
    }
    )
p response.body