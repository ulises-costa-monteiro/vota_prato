<p id="comentario_<%= comentario.id %>">
	<%= comentario.conteudo %> -
	<%= link_to '(remover)', comentario,
				:method => :delete,
				:remote => true,
				:id => "remove_comentario_#{comentario.id}" %>
</p>
<%= content_for :js do %>
	$('#remove_comentario_<%= comentario.id %>').bind(
		'ajax:success',
		function(xhr, result){
			$('#comentario_<%=comentario.id%>').remove();
		}
	);
<%end%>
