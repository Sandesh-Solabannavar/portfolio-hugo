# Portfolio Hugo

This is a personal portfolio website built using [Hugo](https://gohugo.io/), a fast and flexible static site generator. The site showcases projects, experience, and blog posts, and is organized for easy navigation and SEO optimization.

## Features

- **Project Showcase:** Detailed pages for individual projects under `/projects/`.
- **Experience Section:** Highlights professional experience under `/experience/`.
- **Tags & Categories:** Posts are organized by tags and categories for easy filtering.
- **Search:** Built-in search functionality under `/search/`.
- **SEO Friendly:** Includes `sitemap.xml`, `index.xml`, and other SEO assets.
- **Custom 404 Page:** User-friendly error page at `/404.html`.
- **Assets:** Optimized CSS and JS under `/assets/`.

## Folder Structure

```
public/
│   404.html
│   index.html
│   index.json
│   index.xml
│   sitemap.xml
├── assets/
│   ├── css/
│   └── js/
├── categories/
├── experience/
│   ├── happiestminds/
│   ├── talentpace/
│   └── page/
├── page/
├── projects/
│   ├── accomplii/
│   ├── certificateservice/
│   ├── coursemanger/
│   ├── digitalfullmentservice/
│   ├── leap/
│   ├── leappharms/
│   ├── leavetracker/
│   └── page/
├── search/
├── tags/
│   ├── ai/
│   ├── angular/
│   ├── ...
```

- **`public/`**: The generated static site output.
- **`assets/`**: CSS and JS files for styling and interactivity.
- **`projects/`**: Individual project pages.
- **`experience/`**: Work experience details.
- **`tags/` and `categories/`**: Content organization.
- **`search/`**: Search index and results.

## Getting Started

1. **Install Hugo:**  
   [Hugo Installation Guide](https://gohugo.io/getting-started/installing/)

2. **Clone the Repository:**
   ```sh
   git clone <your-repo-url>
   cd portfolio-hugo
   ```

3. **Run Locally:**
   ```sh
   hugo server -D
   ```
   Visit `http://localhost:1313` to view the site.

4. **Build for Production:**
   ```sh
   hugo
   ```
   The static files will be generated in the `public/` directory.

## Customization

- Add new projects in the `content/projects/` directory.
- Update experience in `content/experience/`.
- Modify tags and categories in front matter of your content files.
- Customize styles in `assets/css/`.

## Deployment

Deploy the contents of the `public/` directory to any static hosting service (Netlify, GitHub Pages, Vercel, etc.).

## License

[MIT](LICENSE)

---

*Generated by Hugo. For more information, see the [Hugo Documentation](https://gohugo.io/documentation/).*