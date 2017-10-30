$("#search_city").empty().append("<option>Select City</option><%= escape_javascript(render(:partial => @cities)) %>");

