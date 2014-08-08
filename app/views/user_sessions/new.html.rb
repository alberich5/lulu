<%= form_tag user_sessions_path, method: :post do  %>
	<div class="field">
		<%= label_tag :username %><br/>
		<%= text_field_tag :username %>
	</div>
	<div class="field">
		<%= label_tag :password %><br/>
		<%= text_field_tag :password %>
	</div>
	<div class="actions">
		<%= submit_tag %>
	</div>
<% end %>