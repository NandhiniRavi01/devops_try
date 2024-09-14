from flask import Flask

app = Flask(__name__)
'''
@app.route('/')
def home():
    return 'Hello, World!' '''

@app.route('/github',method=[''POST])
def api_ngrok():
    if request.headers['Content-Type'] =='application/json'
       request json.dumps(request.json)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5006)
