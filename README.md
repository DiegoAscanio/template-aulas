# Template Aulas — Interactive Slides with Marpit

This repository provides an **open educational template** for creating interactive, media-rich slide presentations using [Marpit](https://marpit.marp.app/), a framework for building slides with Markdown and web technologies.

The template allows educators to design lessons that integrate **text, images, videos, interactive elements, and even embedded applications** (like JupyterLite notebooks) to enhance student engagement and understanding.

---

## ✨ Features

- Create slides in **Markdown**.
- Use **HTML, CSS, and JavaScript** for customization.
- Embed **videos, images, iframes**, and interactive components.
- Organize slides in sequentially numbered `.md` files.
- Easy to adapt for **courses, seminars, or workshops**.

---

## 📚 Prerequisites

To effectively use this template, educators should have basic knowledge of:

- **Markdown** syntax
- **Web technologies** (HTML, CSS, JavaScript)
- **GitHub** and repository management

---

## 🚀 Getting Started

Follow these steps to create your own interactive slides:

1. **Use this template**  
   Click the **[Use this template](https://github.com/DiegoAscanio/template-aulas/generate)** button on this repository to create your own copy.

2. **Enable GitHub Pages**  
   - Go to **Settings** → **Pages**  
   - In **Build and Deployment**, set **Source** to **GitHub Actions**.  

3. **Edit the slides**  
   - Navigate to the `slides/` folder.  
   - Create or edit sequentially numbered Markdown files (`01.md`, `02.md`, etc.).  
   - Each file will be treated as one slide.

4. **Commit and push** your changes.  
   Once committed, your slides will be automatically built and published.

5. **Access your slides** at: 

```
https://<GITHUB_USERNAME>.github.io/<REPOSITORY_NAME>
```

Replace `<GITHUB_USERNAME>` and `<REPOSITORY_NAME>` accordingly.

---

## 📝 Slide Writing Tips

- Use standard Markdown for text, lists, and images.
- To add videos or interactive elements, embed them with HTML:
```html
<iframe src="https://example.com" width="800" height="600"></iframe>
```
- For custom styles, edit the provided CSS in the repository through the `styles.md` file.

---

## 🎥 Complementary Resources

If you’re new to Marpit or want to explore advanced features, these videos are highly recommended:

1. [Marpit + Marp CLI: Create Beautiful Slides from Markdown (YouTube)](https://www.youtube.com/watch?v=EzQ-p41wNEE)  
2. [Advanced Marpit Tips and Tricks (YouTube)](https://youtu.be/STNKNB3n1aA?si=JqKDTFn16zigUzMR)  

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## 📢 Acknowledgments

- Developed by [Diego Ascânio Santos](mailto:ascanio@cefetmg.br)  
- Inspired by and powered through the [Marpit](https://marpit.marp.app/) framework.  

> _“Interactive slides are more than just presentations — they are a space for participation, engagement, and learning.”_

