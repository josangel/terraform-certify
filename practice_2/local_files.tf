resource "local_file" "products" {
    count = 5
    content = "Next month products"
    filename = "products-${random_string.sufijo[count.index].id}.txt"
}
