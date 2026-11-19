/**
 * Canonical host: redirect www to the apex domain.
 * Cloudflare Pages Functions middleware; runs before static asset serving.
 */
export async function onRequest(context) {
  const url = new URL(context.request.url);
  if (url.hostname === 'www.wikiqigong.com') {
    url.hostname = 'wikiqigong.com';
    return Response.redirect(url.toString(), 301);
  }
  return context.next();
}
