

<?php
// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate and sanitize user input (you should add more validation)
    $bank = isset($_POST['bank']) ? htmlspecialchars($_POST['bank']) : "";
    $account_number = isset($_POST['account_number']) ? htmlspecialchars($_POST['account_number']) : "";
    $pin_number = isset($_POST['pin_number']) ? intval($_POST['pin_number']) : 0;


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
     $sql = "INSERT INTO user_accounts (bank, account_number, pin_number) VALUES (?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sss", $bank, $account_number, $pin_number);

    if ($stmt->execute()) 
	 echo '<script>
                var result = confirm("Online Banking Details Saved Successfully!. Continue to checkout?");
                if (result) {
                    // Redirect to the checkout page if "Yes" is clicked
                    window.location.href = "checkout.php";
                } else {
                    // Handle the "No" option if needed
                }
              </script>';
    } else {
        // Handle the case where credit card details couldn't be saved
        echo "online banking details could not be saved.";
    }

    // Close the database connection
    $stmt->close();
    $conn->close();

?>

