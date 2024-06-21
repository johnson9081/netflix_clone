const authConfig = {
    authority: 'https://openidconnect-o03siq.zitadel.cloud', //Replace with your issuer URL
    client_id: '270622835129576048@openidconnect', //Replace with your client id
    redirect_uri: 'http://localhost:3000/callback',
    response_type: 'code',
    scope: 'openid profile email',
    post_logout_redirect_uri: 'http://localhost:3000/',
    userinfo_endpoint: 'https://openidconnect-o03siq.zitadel.cloud/oidc/v1/userinfo', //Replace with your user-info endpoint
    response_mode: 'query',
    code_challenge_method: 'S256',
  };

 export default authConfig;
