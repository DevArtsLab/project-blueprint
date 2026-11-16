const NOINDEX = "noindex, nofollow";
const CACHE_CONTROL = "public, max-age=86400";

export default {
  async fetch(request, env) {
    const headers = new Headers();
    headers.set("X-Robots-Tag", NOINDEX);

    if (request.method !== "GET" && request.method !== "HEAD") {
      return new Response("Method not allowed", { status: 405, headers });
    }

    const url = new URL(request.url);
    const key = decodeURIComponent(url.pathname.slice(1));

    if (!key) {
      headers.set("content-type", "text/plain; charset=utf-8");
      const brand = env.BRAND_NAME ? `${env.BRAND_NAME} media bucket` : "Media bucket";
      return new Response(`${brand}. Objects are served by key.\n`, { headers });
    }

    if (request.method === "HEAD") {
      const meta = await env.MEDIA.head(key);
      if (meta === null) return new Response("Not found", { status: 404, headers });
      meta.writeHttpMetadata(headers);
      headers.set("etag", meta.httpEtag);
      headers.set("content-length", meta.size);
      headers.set("Cache-Control", CACHE_CONTROL);
      return new Response(null, { headers });
    }

    const object = await env.MEDIA.get(key, {
      onlyIf: request.headers,
      range: request.headers,
    });

    if (object === null) {
      return new Response("Not found", { status: 404, headers });
    }

    object.writeHttpMetadata(headers);
    headers.set("etag", object.httpEtag);
    headers.set("Cache-Control", CACHE_CONTROL);

    if (!("body" in object)) {
      return new Response(null, { status: 304, headers });
    }

    if (object.range) {
      const end = object.range.end ?? object.size - 1;
      headers.set(
        "content-range",
        `bytes ${object.range.offset}-${end}/${object.size}`,
      );
      return new Response(object.body, { headers, status: 206 });
    }

    return new Response(object.body, { headers });
  },
};
