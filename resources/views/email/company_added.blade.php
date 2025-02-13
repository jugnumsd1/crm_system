<!DOCTYPE html>
<html>
<head>
    <title>New Company Added</title>
</head>
<body>
    <h2>A new company has been added!</h2>
    <p><strong>Name:</strong> {{ $company->name }}</p>
    <p><strong>Email:</strong> {{ $company->email }}</p>
    <p><strong>Website:</strong> {{ $company->website }}</p>
    <p>Thank you!</p>
</body>
</html>
