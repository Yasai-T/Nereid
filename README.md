# Nereid

## Development

Run ReScript in dev mode:

```
yarn res:start
```

In another tab, run the Next dev server:

```
yarn dev
```

## Useful commands

Build CSS seperately via `postcss` (useful for debugging)

```
# Devmode
npx postcss styles/main.css -o test.css

# Production
NODE_ENV=production npx postcss styles/main.css -o test.css
```

## Test production setup with Next

```
# Make sure to uncomment the `target` attribute in `now.json` first, before you run this:
npm run build
PORT=3001 npm start
```

## Tips

### Fast Refresh & ReScript

Make sure to create interface files (`.resi`) for each `page/*.res` file.

Fast Refresh requires you to **only export React components**, and it's easy to unintenionally export other values that will disable Fast Refresh (you will see a message in the browser console whenever this happens).

For the 100% "always-works-method", we recommend putting your ReScript components in e.g. the `src` directory, and re-export them in plain `pages/*.js` files instead (check out the templates initial `pages` directory to see how we forward our React components to make sure we fulfill the Fast-Refresh naming conventions).

### Filenames with special characters

ReScript supports filenames with special characters: e.g. `pages/blog/[slug].res`, but be aware that you can't access these these modules within other modules (since there is no syntax to express modules with e.g. `[` characters). Also don't forget to create an additional `.resi` file to comply to Fast Refresh rules.
