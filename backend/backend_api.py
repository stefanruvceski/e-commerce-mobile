from types import CodeType
import flask
from flask import render_template
from model.product import Product,encoder_product
import json
from flask import jsonify

app = flask.Flask(__name__)
app.config["DEBUG"] = True

@app.route('/api/products/<id>')
def get_product(id):
    p = Product('','','','','','','')
    products = p.get_all()
    for product in products:
        
        if product.id == int(id):
            return encoder_product(product)
        #prod.append()
   # s =json.dumps(p.get_all(), default=lambda x: x.__dict__)
    return jsonify(error=f"ne postoji {id}"), 404

@app.route('/api/products/')
def get_products():
    p = Product('','','','','','','')
    products = p.get_all()
    prod = []
    for product in products:
        prod.append(encoder_product(product))
        #prod.append()
   # s =json.dumps(p.get_all(), default=lambda x: x.__dict__)
    return jsonify(prod), 200

        
    
    

if __name__ == "__main__":
    app.run()