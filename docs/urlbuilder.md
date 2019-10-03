# Gerador de URL's para campanhas de marketing

Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto
<div>
<form>
    <div class="container">
        <div class="w-100" onkeyup="genUrl()">
            <div class="inputBox">
                <label for="URL">Url *</label>
                <input id="URL" class="w-100 input borderLine" type="text" placeholder="https://exemplo.com.br"
                    onchange="buttonOnOff()">
            </div>
            <hr>
            <div class="inputBox">
                <label for="source">Source *</label>
                <input id="source" class="w-100 input borderLine" type="text" placeholder="facebook"
                    onchange="buttonOnOff()">
            </div>
            <div class="inputBox">
                <label for="medium">Medium *</label>
                <input id="medium" class="w-100 input borderLine" type="text" placeholder="cpc"
                    onchange="buttonOnOff()">
            </div>
            <div class="inputBox">
                <label for="campaign">Campanha *</label>
                <input id="campaign" class="w-100 input borderLine" type="text" placeholder="captacao2019"
                    onchange="buttonOnOff()">
            </div>
            <div class="inputBox">
                <label for="content">Conteúdo</label>
                <input id="content" class="w-100 input borderLine" type="text" placeholder="banner"
                    onchange="buttonOnOff()">
            </div>
            <div class="inputBox">
                <label for="term">Termos</label>
                <input id="term" class="w-100 input borderLine" type="text" placeholder="captacao+2019"
                    onchange="buttonOnOff()">
            </div>
        </div>
    </div>
    <hr>
    <div class="inputBox">
        <label for="url_gerada">Url gerada</label>
        <textarea id="url_gerada" class="textarea borderLine"
            placeholder="https://exemplo.com.br?utm_source=facebook&utm_medium=cpc&utm_campaign=captacao2019&utm_content=banner&utm_term=captacao+2019"
            disabled></textarea>
    </div>
    </form>
</div>
