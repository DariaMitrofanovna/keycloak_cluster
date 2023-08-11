<#import "login-template.ftl" as layout>
<@layout.registrationLayout>
  <form
    id="kc-form-login"
    onsubmit="login.disabled = true; return true;"
    action="${url.loginAction}"
    method="post"
    autocomplete="off"
  >
    <div class="input-box">
      <input
        tabindex="1"
        id="username"
        class="kc-form-input"
        name="username"
        value="${(login.username!'')}"
        type="text"
        autofocus
        autocomplete="off"
        title="Заполните это поле."
        <#if usernameEditDisabled??>disabled</#if>
      />
      <label for="username" class="label-for-input">Логин</label>
    </div>
    <div class="input-box">
      <input
        tabindex="2"
        id="password"
        name="password"
        class="kc-form-input"
        type="password"
        autocomplete="off"
        title="Заполните это поле."
      />
      <label for="username" class="label-for-input">Пароль</label>
    </div>
    <div id="kc-form-button-wrapper">
      <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if> />
      <input tabindex="3" name="login" id="kc-login" type="button" value="Войти"/>
    </div>
  </form>
</@layout.registrationLayout>
