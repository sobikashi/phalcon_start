{% extends "templates/base.volt" %}

{% block content %}
    <div>
    <form method="post" action="{{ url('signin/signin') }}">
        <h2>Please Sign In</h2>
        <div class="form-group">
            <label for="email">Email address</label>
            <input type='email' autofocus placeholder="Email" id="email" name="email">
        </div>
        <div class="form-group">
        <label for="password">Password</label>
            <input type='password' placeholder="Password" id="password" name="password">
        </div>
        <input type="hidden" name="{{ security.getTokenKey() }}" value="{{ security.getToken() }}" />
        <button type="submit" class="btn btn-primary">Sign In</button>
    </form>
    </div>
{% endblock %}