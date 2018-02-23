from flask import render_template
from app import app
from app.forms import LoginForm

@app.route('/')
@app.route('/index')
def index():
    user = {'username': 'Gonzalo' }
    posts = [
        {
            'author': 'Gonzalo',
            'body': 'blablaba'
        },
        {
            'author': 'Blankis',
            'body': 'more blablaba'
        },
    ]
    return render_template('index.html', user=user, posts=posts) 
    
@app.route('/login')
def login():
    form = LoginForm()
    return render_template('login.html', form=form, title='Sign In') 