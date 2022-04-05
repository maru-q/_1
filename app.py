from flask import Flask, jsonify

from functions import search_animal_by_id


app = Flask(__name__)


@app.route("/<animal_id>")
def animal_page(animal_id):
    data = search_animal_by_id(animal_id)
    return jsonify(data)


if __name__ == "__main__":
    app.run()
