<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Hello Page</title>
    <script>
        function download(){
            var text = document.getElementById("my-textarea").value;
            text = text.replace(/\n/g, "\r\n"); // To retain the Line breaks.
            var blob = new Blob([text], { type: "text/plain"});
            var anchor = document.createElement("a");
            anchor.download = "googlebuddyfile.txt";
            anchor.href = window.URL.createObjectURL(blob);
            anchor.target ="_blank";
            anchor.style.display = "none"; // just to be safe!
            document.body.appendChild(anchor);
            anchor.click();
            document.body.removeChild(anchor);
        }
    </script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">GOOGLE <small>DRIVE BUDDY</small></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
</nav>
<h3> Welcome to the Google Drive Buddy Application</h3>
<div>
    <div>
         <textarea class="form-control" style="margin-left:20px; width: 50% ; height: 50%" id="my-textarea">
   Notes here...
   </textarea>
    </div>

    <div style="margin-top: 10px ; display: inline-block">
        <form method="post" action="hello">
<%--        <button type="button" onclick="download()">save file</button>--%>
            <button type="submit" style="margin-left:20px;" onclick="download()" class="btn btn-success" name="button4">save and upload file</button>
            <button type="submit"  class="btn btn-primary" name="button5">View Files</button>
        </form>
    </div>
</div>

</body>
</html>
