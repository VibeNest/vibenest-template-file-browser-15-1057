# VibeNest Template: File Browser

Thin deployment adapter for [File Browser](https://github.com/filebrowser/filebrowser).

The adapter follows the current upstream container layout and adds predictable VibeNest defaults:

- official `filebrowser/filebrowser` image;
- fixed public compose service `app` on port `80`;
- separate persistent volumes for files, database and configuration;
- generated first-administrator password exposed as the sensitive `ADMIN_PASSWORD` project variable;
- command runner disabled explicitly with `--disableExec`;
- no Redis dependency for a single-instance personal deployment.

On an empty database the wrapper hashes `ADMIN_PASSWORD` with the official File Browser CLI and creates the `admin` user. Later redeploys keep the existing database and credentials.

## Smoke checklist

1. Deploy with build pack `docker-compose`, compose file `/docker-compose.yml`, internal port `80`.
2. Reveal `ADMIN_PASSWORD` in VibeNest project settings and sign in as `admin`.
3. Confirm the files, database and configuration volumes survive a redeploy.
4. Confirm the public response carries `X-Robots-Tag: noindex, nofollow` on the proof instance.
5. Confirm command execution remains disabled.

Upstream installation reference: https://filebrowser.org/installation
