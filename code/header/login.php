<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login </title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap">
    <!--Google font awesome-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <!--CSS-->
    <link rel="stylesheet" href="./asset/login.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <!--header-->
<div class="header" >
        <div class="container">
            <div class="header__menu">
                <div class="header__menu-logo">
                   <a href="index.php" class="header__menu-link">Moon House</a>
                </div>
                <div class="header-link">
                <a href="./index.php"class= "list__item-link"><i class="fas fa-chevron-left"></i>Back</i></a>
                </div>
            </div>
        </div>
</div>

    <div class="login-form">
        <!--signin-->
        <form class="form-signin">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
            <input type="email"  class="form-control" placeholder="Email address" required="" autofocus="">
            <input type="password"  class="form-control" placeholder="Password" required="">
            
            <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
            <a href="#" id="forgot_pswd">Forgot password?</a>
        </form>
        <p style="text-align:center"> OR  </p>
    <div class="register-form">
        <form action="/signup/" class="form-signup">
        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Register</h1>
                <input type="email" id="user-email" class="form-control" placeholder="Email address" required autofocus="">
                <input type="text" id="user-name" class="form-control" placeholder="Full name" required="" autofocus="">
                <input type="text" id="user-name" class="form-control" placeholder="Address" required="" autofocus="">
                <input type="text" id="user-name" class="form-control" placeholder="Phone" required="" autofocus="">
                <input type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                <input type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">

                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
            </form>
    </div>
</div>  
</body>
</html>