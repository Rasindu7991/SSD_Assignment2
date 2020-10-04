<html>
<head>
    <title>Hello Page</title>
    <script>
        function download(){
            var text = document.getElementById("my-textarea").value;
            text = text.replace(/\n/g, "\r\n"); // To retain the Line breaks.
            var blob = new Blob([text], { type: "text/plain"});
            var anchor = document.createElement("a");
            anchor.download = "my-filename.txt";
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


<h3> Welcome to the Google Drive Buddy Application</h3>
<div>
    <div>
         <textarea style="width: 50% ; height: 50%" id="my-textarea">
   Notes here...
   </textarea>
    </div>

    <div style="margin-top: 10px ; display: inline-block">
        <form method="post" action="hello">
<%--        <button type="button" onclick="download()">save file</button>--%>
            <button type="submit" onclick="download()" class="btn btn-success" name="button4">save and upload file</button>
        </form>
    </div>
</div>

</body>
</html>
