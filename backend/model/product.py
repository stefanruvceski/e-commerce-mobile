class Product:
    def __init__(self):
      print()
      
    def __init__(self, id,title,price,size,description, image,color):
        self.id = id
        self.image = image
        self.title = title
        self.price = price
        self.description = description
        self.size = size
        self.color = color
      
    def get_all(self):
        dummyText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

        products = []
        products=[
            Product(
                id= 1,
                title= "Office Code",
                price= 234,
                size= 12,
                description= dummyText,
                image= "assets/images/bag_1.png",
                color= '0xFF3D82AE'),
             Product(
                id= 2,
                title= "Belt Bag",
                price= 234,
                size= 8,
                description= dummyText,
                image= "assets/images/bag_2.png",
                color= '0xFFD3A984'),
             Product(
                id= 3,
                title= "Hang Top",
                price= 234,
                size= 10,
                description= dummyText,
                image= "assets/images/bag_3.png",
                color= '0xFF989493'),
            Product(
                id= 4,
                title= "Old Fashion",
                price= 234,
                size= 11,
                description= dummyText,
                image= "assets/images/bag_4.png",
                color= '0xFFE6B398'),
            Product(
                id= 5,
                title= "Office Code",
                price= 234,
                size= 12,
                description= dummyText,
                image= "assets/images/bag_5.png",
                color= '0xFFFB7883'),
            Product(
                id= 6,
                title= "Office Code",
                price= 234,
                size= 12,
                description= dummyText,
                image= "assets/images/bag_6.png",
                color= '0xFFAEAEAE')
        ]
        
        return products

from json import JSONEncoder

def encoder_product(product):
    if isinstance(product,Product):
        return {'id':product.id, 'title': product.title,'price': product.price,'size': product.size,'description': product.description, 'image': product.image,'color':product.color}