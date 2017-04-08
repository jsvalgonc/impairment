$("#notice").html("<%=j flash[:notice] %>");
json.array! @rulesiis, partial: 'rulesiis/rulesii', as: :rulesii
