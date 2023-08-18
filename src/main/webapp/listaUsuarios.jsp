<!-- Exibir resultados da busca -->
<table>
    <tr>
        <th>Nome</th>
        <th>Email</th>
        <th>Ações</th>
    </tr>
    <c:forEach var="usuario" items="${usuarios}">
        <tr>
            <td>${usuario.usuario}</td> <!-- Use "usuario" em vez de "nome" -->
            <td>${usuario.email}</td>
            <td>
                <a href="editarUsuario.jsp?id=${usuario.id}">Editar</a>
                <a href="excluirUsuario.jsp?id=${usuario.id}">Excluir</a>
            </td>
        </tr>
    </c:forEach>
</table>
