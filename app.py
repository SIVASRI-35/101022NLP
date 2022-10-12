from flask import Flask,render_template,request
import pickle

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

@app.route("/predict",methods=['GET','POST'])
def predict():
    try:
        input = request.form.get('inp')
        model = pickle.load(open('t5model.pkl','rb'))
        res = model.predict(input)
        res1=''
        for i in res:
            res1=res1+i
            return render_template("res.html",res1=res1,input=input)
    except:
        return 'error'       

if __name__ == "__main__":
    app.run(debug=True)

    
