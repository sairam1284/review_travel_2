<script>
let i = 0
function upVote() {
    document.getElementById('inc').value = ++i;
    var someVarName = localStorage.getItem("someVarName");
}
function downVote() {
    document.getElementById('inc').value = --i;
}
</script>
<button onclick="upVote()">up vote</button>
<button onclick="downVote()">down vote</button>
<input type="text" id="inc" value="0"></input>



<td><%= image_tag("#{trip.picture}", size: "100x200") %></td>
