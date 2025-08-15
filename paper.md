---
title: 'Interactive Slides for Teaching Classes Through Marpit'
tags:
    - Slide-based teaching
    - Marpit
    - Interactive Learning
    - Open Educational Resources
    - Web Technologies in Education
authors:
    - name: Diego Ascanio Santos
      orcid: 0009-0005-1589-657X
      affiliation: 1
affiliations:
    - name: Centro Federal de Educação Tecnológica de Minas Gerais, Brazil
      index: 1
date: 15 August 2025
bibliography: paper.bib

---

# Summary

Interactive slides that allow students to interact with the content of the class, such as answering questions, solving exercises, whatching videos, running / building codes and providing feedback, can enhance the learning experience leading to higher engagement, better understanding and improved education outcomes. This paper presents an open educational template for slides that can be used to create interactive classes using Marpit, a framework for creating slides with Markdown. The template is designed to be easy to use and customize, allowing educators to create interactive slides that can be used in a variety of educational settings.

# Statement of Need

Slide presentations — using tools like PowerPoint, Prezi and Marpit [@gaskins_microsoft_1987;@somlai-fischer_prezi_2009;@hattori_marp-teammarpit_2019] — are widely used in educational environments to deliver lectures, workshops and seminars. Interactive learning tools have been shown to boost student engagement, attention and achievement, especially when they include activities and opportunities for participation [@ruado_enhancing_2024;@ramirez-noriega_presentation_2022;@Bland2024Multimedia].

Marpit, from @hattori_marp-teammarpit_2019, enables educators to build hypermedia presentations using web technologies such as Markdown, HTML, CSS, and JavaScript. It supports embedding rich media—images, videos, and interactive elements like buttons, input fields, or even external websites and applications (e.g., JupyterLite notebooks) via <iframe> tags. This versatility makes it suitable for creating engaging, interactive slides for diverse educational contexts, including online courses, workshops, and seminars.

# Usage 

It is expected from educators some background knowledge in web technologies and the repository management platform GitHub, as the basic template is meant to run inside GitHub Pages. It is posible to run marpit locally, but it is not the focus of this paper, as hosting slides on github pages is a free and easy way to share them with students.

Educators interested in using the template can follow the subsequent steps:

1. Head to [https://github.com/DiegoAscanio/template-aulas](https://github.com/DiegoAscanio/template-aulas) and click on the "Use this template" button to create a new repository based on the template.
2. Enable GitHub Pages in the repository settings, through settings > pages > build and deployment > source > github actions.
3. Go to the slides folder inside the repository root directory and create (edit) the numbered markdown files (01.md, 02.md, etc.) to create the markdown sldes.
4. Commit and push the changes after creating (editing) the slides to see the changes reflected in the GitHub Pages site.

Slides can be accessed through the URL:

```https://<GITHUB_USERNAME>.github.io/<REPOSITORY_NAME>```

where `<GITHUB_USERNAME>` is the GitHub username of the repository owner and `<REPOSITORY_NAME>` is the name of the slides repository created using the template.

# Results

There are several lectures created using the template and two slides of them, with signifficant interactive features, are listed and shown by the Figures 1, and 2, respectively, as examples of marpit capabilities.

![A Hypermedia Slide Containing Text and Video](https://i.imgur.com/TA0vfhT.png)

![A Hypermedia Slide Containing a Full Self-Running Interactive JupyterLite Notebook](https://i.imgur.com/G9eF85f.png)

# Code Availability and Examples

Two template repositories are available at:
- [https://github.com/DiegoAscanio/template-aulas](https://github.com/DiegoAscanio/template-aulas)
- [https://github.com/DiegoAscanio/exemplo-seminarios](https://github.com/DiegoAscanio/exemplo-seminarios)

The first one is a basic template for creating interactive slides using Marpit and GitHub Pages, while the second one is an example of a seminar created using the template with many interactive features.

At least two complete courses — ministered in portuguese — have been created using the template:

- [Electrical Circuit Analysis](https://diegoascanio.github.io/ace)
- [Microcontrollers Programming](https://diegoascanio.github.io/mpmc)

And even students have created seminars slides using the template:

- [Digital-Analog Conversion Seminar](https://juliarezende34.github.io/slides-micro)
- [Pulse Width Modulation Seminar](https://imarthz.github.io/Slide_Pwm)

# Conclusion

The proposed Marpit-based template is an open educational resource that enables educators to design interactive, media-rich slides, fostering greater student engagement and understanding. Its flexibility in integrating diverse web-based resources supports dynamic teaching approaches. While not its primary aim, the process of creating these slides can incidentally provide a valuable context for applying and reinforcing coding skills, offering an additional layer of learning through coding itself. By remaining openly available and easily adaptable, the template invites replication, customization, and extension across diverse educational settings.

# References
