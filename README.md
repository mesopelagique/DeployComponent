# DeployComponent

[![language][code-shield]][code-url]
[![language-top][code-top]][code-url]
![code-size][code-size]
[![discord][discord-shield]][discord-url]

Macro to deploy 4d component to current 4d app or selected folder.

:warning: The component must compile without any errors.

> It use v19 command [Compile project](https://blog.4d.com/launch-a-compilation-by-programming/) to compil then `Zip Create Archive` to bundle it.

## Install this component to your 4D App

Open the component and use the method editor macro `Deploy to > 4D App`

### using command line interface on macOS

Using [kaluza](https://mesopelagique.github.io/kaluza-cli/)

```bash
kaluza install -g mesopelagique/DeployComponent
```

## How to use

- Open any 4d database that you want to deploy
- From any method in method editor, open the macro menu and launch one of the macro under `Deploy to` et voila! 

> :bulb: press Shift down to open on disk the builded component

---

[<img src="https://mesopelagique.github.io/quatred.png" alt="mesopelagique"/>](https://mesopelagique.github.io/)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[code-shield]: https://img.shields.io/static/v1?label=language&message=4d&color=blue
[code-top]: https://img.shields.io/github/languages/top/mesopelagique/DeployComponent.svg
[code-size]: https://img.shields.io/github/languages/code-size/mesopelagique/DeployComponent.svg
[code-url]: https://developer.4d.com/
[discord-shield]: https://img.shields.io/badge/chat-discord-7289DA?logo=discord&style=flat
[discord-url]: https://discord.gg/dVTqZHr
