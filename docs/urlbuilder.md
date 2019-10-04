# Gerador de URL's para campanhas de marketing

Para auxiliar a criação de campanhas de marketing com os parâmetros de UTM corretamente utilizados nas URL's veiculadas.
<div>
<form>
    <div class="container">
        <div class="w-100" onkeyup="genUrl()">
            <div class="inputBox">
                <label for="URL">Url *</label>
                <input id="URL" class="w-100 input borderLine" type="text" placeholder="https://www.uniexemplo.edu.br"
                    onchange="buttonOnOff()">
                <small>Domínio da página</small>
            </div>
            <hr>
            <div class="inputBox">
                <label for="source">Source *</label>
                <input id="source" class="w-100 input borderLine" type="text" placeholder="facebook"
                    onchange="buttonOnOff()">
                <small>Origem à qual a URL foi destinada. Exemplo: facebook, twitter </small>
            </div>
            <div class="inputBox">
                <label for="medium">Medium *</label>
                <input id="medium" class="w-100 input borderLine" type="text" placeholder="cpc"
                    onchange="buttonOnOff()">
                <small>Tipo de veiculação. Exemplo: cpc, display, banner</small>
            </div>
            <div class="inputBox">
                <label for="campaign">Campaign *</label>
                <input id="campaign" class="w-100 input borderLine" type="text" placeholder="captacao2019"
                    onchange="buttonOnOff()">
                <small>Campanha utilizada na URL. Exemplo: bolsa, vestibular</small>
            </div>
            <div class="inputBox">
                <label for="content">Content</label>
                <input id="content" class="w-100 input borderLine" type="text" placeholder="banner"
                    onchange="buttonOnOff()">
                <small>Conteudo no qual foi vinculado a URL. Exemplo: banner, cta, popup</small>
            </div>
            <div class="inputBox">
                <label for="term">Term</label>
                <input id="term" class="w-100 input borderLine" type="text" placeholder="captacao+2019"
                    onchange="buttonOnOff()">
                <small>Termos de pesquisa ou palavras chaves. Exemplo: bolsa+2019+uniexemplo</small>
            </div>
        </div>
    </div>
    <hr>
    <div class="inputBox">
        <label for="url_gerada">Url gerada</label>
        <textarea id="url_gerada" class="textarea borderLine"
            placeholder="https://www.uniexemplo.edu.br?utm_source=facebook&utm_medium=cpc&utm_campaign=captacao2019&utm_content=banner&utm_term=captacao+2019"
            disabled></textarea>
    </div>
    </form>
</div>
