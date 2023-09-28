<%@ Language=VBScript %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World + Countdown + Redirect by Chad Mills</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .fadeEffect {
            animation: fadeInOut 1s infinite;
            color: black;
        }

        @keyframes fadeInOut {
            0% {opacity: 1; color: black;}
            50% {opacity: 0.5; color: green;}
            100% {opacity: 1; color: black;}
        }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center vh-100">
    <div class="text-center">
        <h1 id="mainMessage">Hello World!</h1>
        <p>Redirecting in <span id="countdown">5</span> seconds...</p>
    </div>

    <script src="https://cdn.polyfill.io/v3/polyfill.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function() {
            var counter = 5;
            var countdownElement = $('#countdown');
            var mainMessageElement = $('#mainMessage');

            var interval = setInterval(function() {
                counter--;
                countdownElement.text(counter);

                if (counter === 0) {
                    clearInterval(interval);

                    mainMessageElement.text('Hold Please...').addClass('fadeEffect');

                    setTimeout(function() {
                        mainMessageElement.removeClass('fadeEffect');
                        countdownElement.parent().text('Redirecting NOW to Chad\'s Portfolio');

                        setTimeout(function() {
                            var isConfirmed = confirm("The JS fired a redirect function. Click ok to proceed");
                            if (isConfirmed) {
                                window.location.href = "https://www.chadmills713.com";
                            }
                        }, 2500);
                    }, 2000);
                }
            }, 1000);
        });
    </script>
</body>
</html>

