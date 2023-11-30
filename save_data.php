<?php
// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate and sanitize user input (you should add more validation)
    $cardName = isset($_POST['cardName']) ? htmlspecialchars($_POST['cardName']) : "";
    $cardNumber = isset($_POST['cardNumber']) ? htmlspecialchars($_POST['cardNumber']) : "";
    $cardMonth = isset($_POST['cardMonth']) ? intval($_POST['cardMonth']) : 0;
    $cardYear = isset($_POST['cardYear']) ? intval($_POST['cardYear']) : 0;
    $cardCvv = isset($_POST['cardCvv']) ? htmlspecialchars($_POST['cardCvv']) : "";

    // Database connection details
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "onlinefoodphp";

    // Create a database connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check the connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Prepare and execute an SQL statement to insert data into the database
    $sql = "INSERT INTO creditcards (cardName, cardNumber, cardMonth, cardYear, cardCvv)
            VALUES (?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssiii", $cardName, $cardNumber, $cardMonth, $cardYear, $cardCvv);

    if ($stmt->execute())
 echo '<script>
                var result = confirm("Credit Card Details Saved Successfully!. Continue to checkout?");
                if (result) {
                    // Redirect to the checkout page if "Yes" is clicked
                    window.location.href = "checkout.php";
                } else {
                    // Handle the "No" option if needed
                }
              </script>';
    } else {
        // Handle the case where credit card details couldn't be saved
        echo "Credit card details could not be saved.";
    }



    // Close the database connection
    $stmt->close();
    $conn->close();
 
?>

