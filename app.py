# Dependencies
from flask import Flask, render_template

# create instance of Flask app
app = Flask(__name__)

# Create routes
@app.route("/")
def index():
    return render_template("index.html")

@app.route("/presentation")
def presentation():
    return render_template("presentation.html")

@app.route("/visuals")
def visuals():
    return render_template("visuals.html")

@app.route("/resources")
def resources():
    return render_template("resources.html")

@app.route("/about")
def about():
    return render_template("about.html")


# Start App
if __name__ == "__main__":
    app.run(debug=True)