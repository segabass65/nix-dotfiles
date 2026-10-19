<h1 align="center">
  <img src="https://avatars.githubusercontent.com/u/487568?s=280&v=4" width="256"/><br>
  Multi-host NixOS dotfiles 📜<br>
  <img src="https://img.shields.io/badge/Flake-purple?style=for-the-badge" alt="Flake"/>
  <img src="https://img.shields.io/badge/Hosts-3-blue?style=for-the-badge" alt="3 Hosts"/>
  <img src="https://img.shields.io/badge/Home_Manager-orange?style=for-the-badge" alt="Home Manager"/>
</h1>

This configuration is primarily designed<!-- 
--> for my personal workflow and hardware.
It is not a generic setup and should not be<!-- 
--> expected to work out of the box on other machines.

You are welcome to reuse parts of it, but expect to<!-- 
--> adapt and modify it to fit your own environment.

## 🔍 Overview

> [!NOTE]
> Starred items (⭐) highlight configuration differences between hosts.

|                    | 🖥  segabass65@pc | 🌐 segabass65@srv | 📦 segabass65@vm |
| -------------------| ---------------- | ----------------- | ---------------- |
| 👣 **DE/WM**       | ⭐ GNOME         | ⭐ None           | ⭐ bspwm         |
| 🚀 **Shell**       | fish             | fish              | fish             |
| 🐧 **Kernel**      | LTS              | LTS               | LTS              |
| 📝 **Text Editor** | Helix            | Helix             | Helix            |

## ⬇️ Installation

To apply the system configuration for the 'pc'<!-- 
--> host, run this inside the repository directory:

> [!TIP]
> Replace `pc` with the actual hostname for other hosts.

```bash
sudo nixos-rebuild switch --flake .#pc
```
