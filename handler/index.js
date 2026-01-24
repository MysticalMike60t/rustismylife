export default {
  async fetch(request, env) {
    // Serve static assets from ./dist
    return env.ASSETS.fetch(request);
  },
};
