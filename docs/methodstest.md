# Testar API's

Página destinada à auxiliar o desenvolvedor testar as API's presentes nessa documentação.

Por padrão todas as requisições são feitas com o tipo MIME `application/json`.

<div>
    <div class="inputSelect">
        <div class="divInput">
            <input id="destiny" class="conteudo" type="text" placeholder="URL" onchange="buttonOnOff()">
        </div>
        <div class="divSelect">
            <select id="method" class="conteudo" onchange="funcoesSelect()">
                <option value="POST">POST</option>
                <option value="GET">GET</option>
                <option value="PUT">PUT</option>
                <option value="PATCH">PATCH</option>
                <option value="DELETE">DELETE</option>
                <option value="OPTIONS">OPTIONS</option>
            </select>
        </div>
    </div>
    <!-- <div style="margin: 10px 0px;">
        <textarea id="data" placeholder="Header"></textarea>
    </div> -->
    <div style="margin: 10px 0px;">
        <textarea id="data" placeholder="JSON"></textarea>
    </div>
    <div>
        <button id="buttonSubmit" class="conteudo" disabled="true" onclick="send()">Enviar</button>
    </div>
    <div>
        <p id="resultado">Resultado: null<br>Status: null</p>
    </div>
</div>
