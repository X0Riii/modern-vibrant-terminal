<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Modern Vibrant Terminal</title>

<style>
:root {
  --bg: #0f172a;
  --panel: #020617;
  --text: #e5e7eb;
  --accent: #38bdf8;
  --green: #22c55e;
}

body {
  font-family: system-ui, -apple-system, BlinkMacSystemFont, sans-serif;
  background: var(--bg);
  color: var(--text);
  margin: 0;
  padding: 40px;
  line-height: 1.6;
}

.container {
  max-width: 1000px;
  margin: auto;
}

h1, h2, h3 {
  color: var(--accent);
}

h1 {
  font-size: 2.5em;
}

.badge {
  display: inline-block;
  background: var(--green);
  color: #000;
  padding: 6px 14px;
  border-radius: 999px;
  font-size: 13px;
  margin-right: 8px;
}

pre, code {
  background: var(--panel);
  color: #a7f3d0;
  padding: 14px;
  border-radius: 10px;
  overflow-x: auto;
}

ul li {
  margin-bottom: 8px;
}

.preview img {
  width: 100%;
  max-width: 900px;
  border-radius: 14px;
  box-shadow: 0 15px 40px rgba(0,0,0,.6);
}

.preview {
  margin-bottom: 40px;
}

.footer {
  margin-top: 60px;
  opacity: 0.8;
  font-size: 14px;
}
</style>
</head>

<body>
<div class="container">

<h1>Modern Vibrant Terminal</h1>

<span class="badge">Cross-Distro</span>
<span class="badge">Bash</span>
<span class="badge">Linux Mint Ready</span>
<span class="badge">Modern UI</span>

<p>
A <strong>modern, vibrant, and clean terminal experience</strong> for Linux.  
One script transforms your terminal into a colorful, readable, and professional environment  
with transparent background support and <code>neofetch</code> integration.
</p>

<hr>

<h2>🖼️ Preview</h2>

<div class="preview">
  <h3>🔹 Default Terminal View</h3>
  <img src="assets/preview-1.png" alt="Default Terminal Preview">
</div>

<div class="preview">
  <h3>🔹 Colored Commands & Output</h3>
  <img src="assets/preview-2.png" alt="Colored Commands Preview">
</div>

<div class="preview">
  <h3>🔹 Transparent Background</h3>
  <img src="assets/preview-3.png" alt="Transparent Terminal Preview">
</div>

<hr>

<h2>✨ Features</h2>
<ul>
  <li>Modern vibrant prompt (user / host / path)</li>
  <li>Clear and colorful file & extension highlighting</li>
  <li>Readable command output & errors</li>
  <li>Automatic <code>neofetch</code> display</li>
  <li>Transparent background ready</li>
  <li>Cross-distribution compatible</li>
  <li>Safe installation with automatic backup</li>
</ul>

<hr>

<h2>📦 Supported Distributions</h2>
<ul>
  <li>Linux Mint (Cinnamon recommended)</li>
  <li>Ubuntu / Debian</li>
  <li>Arch Linux / Manjaro</li>
  <li>Fedora</li>
  <li>openSUSE</li>
</ul>

<hr>

<h2>🚀 Installation</h2>

<p>Clone the repository and run the installer:</p>

<pre><code>
git clone https://github.com/YOUR_USERNAME/modern-vibrant-terminal.git
cd modern-vibrant-terminal
chmod +x install.sh
./install.sh
</code></pre>

<p>
After installation, close all terminal windows and open a new one.
</p>

<hr>

<h2>🎨 Enable Transparency</h2>
<p>
Transparency depends on your terminal emulator.  
For <strong>GNOME Terminal / Mint Terminal</strong>:
</p>

<ul>
  <li>Terminal → Preferences</li>
  <li>Profile → Colors</li>
  <li>Disable “Use colors from system theme”</li>
  <li>Enable transparent background</li>
  <li>Recommended value: <strong>10–15%</strong></li>
</ul>

<hr>

<h2>🔒 Safety & Notes</h2>
<ul>
  <li>Your <code>.bashrc</code> is backed up automatically</li>
  <li>No destructive commands are used</li>
  <li>Works only with <strong>bash</strong> (default shell)</li>
  <li><code>neofetch</code> is preserved and enhanced</li>
</ul>

<hr>

<h2>📜 License</h2>
<p>
MIT License — free to use, modify, and distribute.
</p>

<div class="footer">
<p>
Made with ❤️ for Linux users who love clean terminals.
</p>
</div>

</div>
</body>
</html>
