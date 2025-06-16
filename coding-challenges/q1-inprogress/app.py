#!/usr/bin/python3

from flask import Flask, request, jsonify

app = Flask(__name__)
products = []

# Create the product
@app.route('/product', methods=['POST'])

# Read the product
@app.route('/read', methods=['GET'])

# Update the product
@app.route('/create', methods=['PUT'])

# Delete the product
@app.route('/create', methods=['DELETE'])

# list all products with optional sorting and pagination
@app.route('/create', methods=['GET'])



# Define the port for the server to run on
if __name__ == '__main__':
    app.run(debug=True)