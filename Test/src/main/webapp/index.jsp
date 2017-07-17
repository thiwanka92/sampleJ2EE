<!DOCTYPE html>
<html>
	<style>
		input[type=text], select {
		    width: 100%;
		    padding: 12px 20px;
		    margin: 8px 0;
		    display: inline-block;
		    border: 1px solid #ccc;
		    border-radius: 4px;
		    box-sizing: border-box;
		}
		
		input[type=submit] {
		    width: 100%;
		    background-color: #62a6e0;
		    color: white;
		    padding: 14px 20px;
		    margin: 8px 0;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		}
		
		input[type=submit]:hover {
		    background-color: #469be4;
		}
		
		div {
		    border-radius: 5px;
		    background-color: #f2f2f2;
		    padding: 20px;
		}
		#formBox{
			margin: 0px auto;
			width: 600px;
		}
		h3{margin: 0px auto;width: 300px}
	</style>
<body>

<h3>Simple Form for Save Person</h3>

<div id="formBox">
  <form action="/Test/person.do?dispatch=create" method="post">
    <label for="name">Name</label>
    <input type="text" id="name" name="name" placeholder="Your name..">

    <label for="age">Age</label>
    <input type="text" id="age" name="age" placeholder="Your age..">

    <label for="city">Country</label>
    <select id="city" name="city">
      <option value="colombo">Colombo</option>
      <option value="kandy">Kandy</option>
      <option value="usa">USA</option>
    </select>
  
    <input type="submit" value="Submit">
  </form>
  <p>Form Html and css : w3school</p>
</div>

</body>
</html>
