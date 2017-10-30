$("#search_state").empty().append("<option>Select State</option><%= escape_javascript(render(:partial => @states)) %>");
