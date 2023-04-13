import json

from flask import Flask, request
from flask_restful import Api, Resource

app = Flask(__name__)
api = Api(app)

class Cloudiod(Resource):
    def get(self):
        data = json.loads(request.data)
        return data

    def post(self):
        return {"data": "posted"}

api.add_resource(Cloudiod, "/cloudiod-api/")

if __name__ == "__main__":
    app.run(debug=True)

