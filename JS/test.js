function validation (check_string) {
    while (true) {
    if (typeof check_string == "string") 
    {
        if (check_string.length < 5) {{console.log("Min 5 symbol")} {break}} 
        if (check_string.length > 64) {{console.log("Max 64 symbol")} {break}}
        if (/[a-z]/.test(check_string) == false) {{console.log("Must be letter in string")} {break}}
        if (/[A-Z]/.test(check_string) == false) {{console.log("Must be one uppercase letter")} {break}}
        if (/[0-9]/.test(check_string) == false) {{console.log("Must be one number")} {break}}
        if (check_string.includes("@") == false) {{console.log("Must be @")} {break}}
        if (check_string.length == 0) {{console.log("String can't be empty")} {break}}
    }
    else {{console.log("It's not a string")} {break}};
}
}   

validation("Qqqqq1@")