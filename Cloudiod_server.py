from flask import Flask
from flask_restful import Api, Resource

app = Flask(__name__)
api = Api(app)

class Cloudiod(Resource):
    def get(self):
        return {"data": "Hello"}

    def post(self):
        return {"data": "posted"}

api.add_resource(Cloudiod, "/")

if __name__ == "__main__":
    app.run(debug=True)

