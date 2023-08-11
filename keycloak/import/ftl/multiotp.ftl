<#import "login-template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("loginTitle",realm.name)}
    <#elseif section = "header">
        ${msg("loginTitleHtml",realm.name)}
    <#elseif section = "form">
        <form id="kc-totp-login-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <div class="input-box">
                <input
                        tabindex="1"
                        id="totp"
                        class="kc-form-input"
                        name="totpvalue"
                        type="text"
                        autofocus
                        autocomplete="off"
                        title="Заполните это поле."
                />
                <label for="totp" class="label-for-input">Одноразовый пароль</label>
            </div>
            <div id="kc-form-button-wrapper">
                <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if> />
                <input tabindex="2" name="login" id="kc-login" type="submit" value="Войти"/>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>