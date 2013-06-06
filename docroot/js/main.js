

function clickCounter()
{
if(typeof(Storage)!=="undefined")
  {
  if (sessionStorage.clickcount)
    {
    sessionStorage.clickcount=Number(sessionStorage.clickcount)+1;
    }
  else
    {
    sessionStorage.clickcount=1;
    }
  document.getElementById("result").innerHTML="You have clicked the button " + sessionStorage.clickcount + " time(s) in this session.";
  }
else
  {
  document.getElementById("result").innerHTML="Sorry, your browser does not support web storage...";
  }
}



function setProgress(progress)
{
	
	
	
	    localStorage.prog=progress;
	  
	
	  
	//prog_bar(progress,0,100,200,25,"#0066FF","#99FFFF");
	
	
}

function draw()
{
	
	
	pg=localStorage.prog;
	
	  
	 
	  
	prog_bar(pg,0,100,200,25,"#0066FF","#99FFFF");
	
	
}


function prog_bar(cur_val,min_val,max_val,width,height,border,fill)
{
var str = "",res = 0;
if(cur_val>=min_val && cur_val<=max_val)
{
  if(min_val<max_val)
  {
    res = ((cur_val-min_val)/(max_val-min_val))*100;
 res = Math.floor(res);
  }
  else
  {
    res = 0;
  }
}
else
{
  res = 0;
}
str = str + "<div style=\"border:"+border+" solid thin; width:"+width+"px; height:"+height+"px;\">";
str = str + "<div style=\"background-color:"+fill+"; width:"+res+"%; height:"+height+"px;\">";
str = str + "</div></div>";
str = str + res + "%";
document.getElementById("prog_bar").innerHTML = str;
}